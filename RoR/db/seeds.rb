# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# HOST = 'https://api.chucknorris.io'.freeze
# BY_CATEGORY = '/jokes/random?category='.freeze
# CATEGORY = '/jokes/categories'.freeze
#
# categories = Curl.get(File.join(HOST, CATEGORY))
#
# JSON(categories.body).each do |category_name|
#   categor = Category.create(name: category_name)
#
#   20.times do |n|
#    Joke.create(
#          message: JSON(Curl.get(File.join(HOST,BY_CATEGORY + category_name).body))['value'],
#          category_id: category.id)
#    end
# end


5.times do
  Book.create(
    title: Faker::Book.title,
    year_published: Faker::Number.within(range: 2000..2023),
    isbn: Faker::Number.number(digits: 5),
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    out_of_print: true,
    views: rand(100),
    supplier_id: supplier.id,
    author_id: author.id
  )
  Author.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    title: Faker::Name.name
    )
  BookOrder.create(
    book_id: book.id,
    order_id: order.id
    )
  Supplier.create(
    name: Faker::Name.name)

  Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    title: Faker::Name.name,
    visits: rand(20),
    orders_count: 0
  )
end

5.times do
  Review.create(
    title: Faker::Book.title,
    body: Faker::Book.genre,
    rating: Faker::Number.digit,
    state: rand(0..10),
    book_id: book.id,
    customer_id:  customer.id
  )
  Order.create(
    date_submitted: Time.now,
    status: rand(0..5),
    subtotal: rand(1..10),
    shipping: rand(10..100),
    tax: rand(1..10),
    total: rand(10..100),
    customer_id:  customer.id
  )
end