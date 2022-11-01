# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

snackProducts = Product.create!([{title: "Katti Roll", price: 130, description: "Famous roll"}, {title: "Taco", price: 350, description: "Mexico's favourite"}, {title: "Bujji", price: 50, description: "India's favourite"}, {title: "Dhai puri", price: 80, description: "India's healtiest"}])

Category.create!([{title: 'Snacks', products: snackProducts}])

fruitProducts = Product.create!([{title: "Apple", price: 180, description: "Famous Kashmiri apple"}, {title: "Banana", price: 90, description: "Standard yellow banana"}, {title: "Pomegranate", price: 210, description: "Ripe large"}, {title: "Mango", price: 260, description: "Salem mango"}])

Category.create!([{title: 'Fruits', products: fruitProducts}])

vegProducts = Product.create!([{title: "Carrot", price: 80, description: "Organic red"}, {title: "Radish", price: 70, description: "Large white"}, {title: "Tomato", price: 110, description: "Red and ripe"}, {title: "Cucumber", price: 60, description: "Green and tender"}])

Category.create!([{title: 'Vegitables', products: vegProducts}])

PRODUCTS_COUNT = 100
MAX_CATEGORIES = 3

MAX_VARIANTS = 4
VARIANTS_WEIGHT = 0.53

CATEGORIES = Faker::Base.fetch_all('commerce.department').map do |title|
  Category.find_or_create_by!(title: title)
end

PRODUCTS_COUNT.times do
  title = ''

  # generate unique title
  loop do
    title = Faker::Commerce.product_name
    break unless Product.exists?(title: title)
  end

  descriptionText = "The " + Faker::Commerce.color + " coloured " + Faker::Commerce.material + " " + title + " from " + Faker::Commerce.brand + " sold by " + Faker::Commerce.vendor

  product = Product.new(
    title: title,
    price: Faker::Commerce.price,
    description: descriptionText
  )

  num_categories = 1 + rand(MAX_CATEGORIES)
  product.categories = CATEGORIES.sample(num_categories)

  if rand > VARIANTS_WEIGHT
    num_variants = 1 + rand(MAX_VARIANTS)
    num_variants.times do
      product.variants.build(
        title: rand > VARIANTS_WEIGHT ? Faker::Commerce.color : Faker::Commerce.material,
        price: Faker::Commerce.price
      )
    end
  end

  product.save!

end
