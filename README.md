# README

## Vending Machine app.

I initially began this project in Rails backend; however found out halfway through I won't be able to finish it in time. So have done it in ruby.

#### Things I have finished using TDD in Ruby.

* Machine can be initially loaded with items.
* Machine can be reloaded with items.
* Machine can vend item chosen by client from the stock.
* Machine can keep track of stock of items.
* Machine can vend an item
* Machine can be initially loaded with coins
* Machine can be restocked with coins
* Machine accepts coins of denominations 1p, 2p, 5p, 10p, 20p, 50p, £1, £2.


#### Things I have to finish

* Machine can calculate if amount of money_paid is sufficient
* Machine can return change in coins
* An algorithm to use minimum number of coins to return change
* Machine asks for more money if insufficient money_paid
* Machine keeps track of coins
* A backend api to interact with frontend machine interface
* A frontend (I would ideally use React)


# Spec
Design a vending machine using a programming language of your choice. The vending machine should perform as follows:

Once an item is selected and the appropriate amount of money is inserted, the vending machine should return the correct product.
It should also return change if too much money is provided, or ask for more money if insufficient funds have been inserted.
The machine should take an initial load of products and change. The change will be of denominations 1p, 2p, 5p, 10p, 20p, 50p, £1, £2.
There should be a way of reloading either products or change at a later point.
The machine should keep track of the products and change that it contains.​

## Getting started

### Prerequisites

#### Ruby ~> 2.4

Download and manage via [rbenv](https://github.com/rbenv/rbenv) or [RVM](https://rvm.io/)

### Installing

    Clone the repository:

        git clone https://github.com/sunali1/vending-machine.git
        cd ./vending-machine

    Install the gems:

        bundle install

## Tests

  In the terminal run ``` rspec```

### End to End Tests

TBA

### Coding Style Tests

TBA

## Deployment

### User Stories
```
  As a User
  So I can buy a product
  I can put money in the till

  As a User
  So I can buy a product with the right amount
  I can get loose change

  As a vendor
  So I know the machine is ready for use
  I can load the machine with products

  As a vendor
  So I know the machine is ready for use
  I can load the machine-till with coins

  As a vendor
  So I know the machine needs refilling
  Machine keeps track of products

  As a vendor
  So I know the machine-till needs refilling
  Machine-till keeps track of coins used

  As a vendor
  So I can replenish the machine
  I can reload products

  As a vendor
  So I can replenish the machine-till
  I can reload coins

```
