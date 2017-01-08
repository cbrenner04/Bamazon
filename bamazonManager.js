// Level 2 requirements
var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: process.env.USER_PASS,
    database: "Bamazon"
});

connection.connect(function(err) {
    if (err) throw err;
    startPrompt();
});

function startPrompt() {
    inquirer.prompt([{
        name: 'command',
        type: 'list',
        message: 'What would you like to do?',
        choices: ['View Products for Sale', 'View Low Inventory', 'Add to Inventory',
            'Add New Product'
        ]
    }]).then(function(answer) {
        switch (answer.command) {
            case 'View Products for Sale':
                viewProducts().then(function(result) {
                    printItems(result);
                });
                break;
            case 'View Low Inventory':
                viewLowInventory().then(function(result) {
                    printItems(result);
                });
                break;
            case 'Add to Inventory':
                addInventory();
                break;
            case 'Add New Product':
                addProduct();
                break;
            default:
                console.log('what?');
        }
    });
}

function viewProducts() {
    return runQuery("SELECT * FROM products");
}

function viewLowInventory() {
    return runQuery("SELECT * FROM products WHERE stock_quantity < 5");
}

function addInventory() {
    console.log('addInventory');
}

function addProduct() {
    console.log('addProduct');
}

function printItems(items) {
    items.forEach(function(item) {
        console.log('Item ID: ' + item.item_id + ' | Product Name: ' + item.product_name + ' | Price: ' + item.price + ' | Quantity: ' + item.stock_quantity);
    });
}

function runQuery(query, resolve, reject) {
    return new Promise(function(resolve, reject) {
        connection.query(query, function(err, res) {
            if (err) reject(err);
            resolve(res);
        });
    });
}
