var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "bamazon_db"
})

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + '\n--------------------\n');
    createTable();
});

var createTable = function () {
    connection.query("SELECT * FROM products", function (err, res) {
        console.table(res);
        propmptCustomer(res);
    })
};

var propmptCustomer = function (res) {
    inquirer.prompt([{
        type: 'input',
        name: 'choice',
        message: "What would you like to purchase? [Quit with Q]"
    }]).then(function (answer) {
        var correct = false;
        if (answer.choice.toUpperCase() == "Q") {
            process.exit();
        }
        for (var i = 0; i < res.length; i++) {
            if (res[i].product_name == answer.choice) {
                correct = true;
                var product = answer.choice;
                var id = i;
                inquirer.prompt({
                    type: 'input',
                    name: 'quantity',
                    message: "How many would you like to purchase?",
                    validate: function (value) {
                        if (isNaN(value) == false) {
                            return true;
                        } else {
                            return false;
                        }
                    }
                }).then(function (answer) {
                    if ((res[id].stock_quantity - answer.quantity) > 0) {
                        connection.query("UPDATE products SET stock_quantity='" + (res[id].stock_quantity - answer.quantity) + "' WHERE product_name='" + product + "'", function (err, res2) {
                            console.log("Product Bought!");
                            createTable();
                        })
                    } else {
                        console.log("Not a valid selection!");
                        propmptCustomer(res);
                    }
                })
            }
        }
        if (i == res.length && correct == false) {
            console.log("Not a valid selection!");
            propmptCustomer(res);
        }
    })
}