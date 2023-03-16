# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
HOST = 'https://api.chucknorris.io'.freeze
BY_CATEGORY = '/jokes/random?category='.freeze
CATEGORY = '/jokes/categories'.freeze

categories = Curl.get(File.join(HOST, CATEGORY))

JSON(categories.body).each do |category_name|
  category = Category.create(name: category_name)

  20.times do |n|
   Joke.create(
         message: JSON(Curl.get(File.join(HOST,BY_CATEGORY + category_name).body))['value'],
         category_id: category.id)
   end
end
