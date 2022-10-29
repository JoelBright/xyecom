# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version: Latest

- System dependencies: 
- - Present in the gemfile

- Configuration: 
- - Please setup a connection to a postgreSQL DB before running any rake commands

- Database creation: 
- - Please use the command

- - - rake db:create

- - Followed by 

- - - rake db:migrate

- Database initialization
- - To seed the database with random data use the command 
- - - rails db:seed

# Website schema

- Product
  - Categories
  - Variations
- Category
  - Products
- Order
  - Order Items
- Order Items
  - Products

## Models

- Product
  - Title
  - Description
  - Price
- Product Variant
  - Title
  - Price
- Category
  - Title
- Order
  - First Name
  - Last Name
  - Sub Total
- Order Item
  - Quantity
  - Price
