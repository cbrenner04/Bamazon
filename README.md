# Bamazon

NU Coding BootCamp HW 10

In this repo are two applications, `bamazonCustomer.js` and `bamazonManager.js`.
For either of these to work you will first need to have `mySQL` installed. Then
run the script in `bamazon.sql` to set up the database for these apps.

**NOTE**: You will need to add a file called `keys.js` with the username and
password for your mySQL database. The file should look like this:

```javascript
exports.databaseKeys = {
    username: yourUsername,
    password: yourPassword
};
```

## Bamazon Customer

To run this simply run:

```
node bamazonCustomer.js
```

You will first see a list of the available items and a prompt asking you which
item you would like to purchase.

![Initial Customer](./images/initial_screen_customer.png)

You will then choose the quantity of the item you would like to purchase. If
there are sufficient quantities available, you will see a success message and
the total cost to you.

![Success Customer](./images/success_customer.png)

If there are not sufficient quantities available, you will see a failure
message.

![Failure Customer](./images/failure_customer.png)

## Bamazon Manager

To run this simply run:

```
node bamazonManager.js
```

You will first be given four options to choose from, just use the arrow keys to
choose the option you would like.

![Initial Manager](./images/initial_manager.png)

The first choice will show you all products for sale.

![First Choice Manager](./images/first_choice_manager.png)

The second choice will show you all the products with a quantity of less than 5.

![Second Choice Manager](./images/second_choice_manager.png)

The third choice will allow you to add quantity to any product. It will first
bring up a list of all the item names. You will again use the arrow keys to
choose the item.

![Third Choice Options Manager](./images/third_choice_options_manager.png)

You will then enter the quantity you want to add.

![Third Choice Success Manager](./images/third_choice_success_manager.png)

The fourth choice will allow you to add a new item. You will be asked for the
ID, name, department, price, and quantity.

![Fourth Choice Manager](./images/fourth_choice_manager.png)
