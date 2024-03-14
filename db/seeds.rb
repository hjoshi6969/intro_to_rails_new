require 'faker'

# Clear existing data
User.destroy_all
Product.destroy_all
Category.destroy_all
Dealer.destroy_all

# Seed Users
10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

# Seed Categories
5.times do
  Category.create!(
    name: Faker::Commerce.department(max: 1)
  )
end

# Seed Dealers
3.times do
  Dealer.create!(
    name: Faker::Company.name,
    location: Faker::Address.city
  )
end

# Seed Products
100.times do
  product = Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: Faker::Commerce.price(range: 50..300),
    category_id: Category.pluck(:id).sample,
    dealer_id: Dealer.pluck(:id).sample
  )
end

puts "Seed data inserted successfully"
