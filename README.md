# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

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
