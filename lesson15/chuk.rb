# Создать приложение с api  чакка норриса 
# Создать запрос с возможность выбора категории шуток 
# Выполнить запрос 
# Отобразить шутку 
require 'curb'
require 'json'

class ChukNorris
    HOST = 'https://api.chucknorris.io'.freeze
    CATEGORY = '/jokes/categories'.freeze
    JOKE_CATEGORY = '/jokes/random?category='.freeze

    def joke_output
        categ = Curl.get(File.join(HOST, CATEGORY))
        jokes = JSON(categ.body)
        puts 'Make a choice!!'
        jokes.each.with_index { |el, index| puts "#{index + 1} => #{el}" }
    
        user = gets.to_i + 1
        raise 'ATTENTION!!! no number for this category' unless (0...jokes.size).include?(user)

        random_categ = jokes[user]
        jok_category = Curl.get(File.join(HOST,JOKE_CATEGORY + random_categ))

        puts JSON.parse(jok_category.body)['value']
    end
end

jokes = ChukNorris.new
jokes.joke_output