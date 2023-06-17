#1. Создать класс Товар, имеющий переменные имя, цена, рейтинг.
#2. Создать класс Категория, имеющий переменные имя и массив товаров.
#   Создать несколько объектов класса Категория.
#3. Создать класс Basket, содержащий массив купленных товаров.
#4. Создать класс User, содержащий логин, пароль и объект класса Basket.
#   Создать несколько объектов класса User.
#5. Вывести на консоль каталог продуктов.
#6. Вывести на консоль покупки посетителей магазина.
require 'pry'

class Product

    attr_accessor :name, :price, :rating

    def initialize(name, price, rating)
        @name = name
        @price = price
        @rating = rating
    end

    def info_products
        puts "Product name #{name}, his price #{price}, and rating #{rating} !!! "
    end
end

class Category

    attr_accessor :name, :products

    def initialize(name, *products)
        @name = name
        @products = []
    end

    def info_products(add_product)
        products << add_product
    end

    def show_catalog
     puts  "#{name}: #{products.map(&:product)}"
    end
end

class Basket < Category

    attr_accessor :purchased_goods

    def initialize(*purchased_goods)
        @purchased_goods = purchased_goods
    end

end

class User

    attr_accessor :login, :password, :basket
    
    def initialize(login, password, basket)
        @login
        @password
        @basket = Basket.new(basket)
    end

    def shoping(new_product)
        basket.purchased_goods << new_product
    end

    def items_in_the_cart
        @buy_products = []
        basket.purchased_goods.map(&:product)
    end
end




number1 = Product.new('Milka', 3.29, 7.8)
number2 = Product.new('Cheese', 4.79, 5.2)
number1.info_products
number2.info_products

categ1 = Category.new('Meat', [chicken, pork, beef])
categ2 = Category.new('Cereals', [rice, millet, buckwheat])
categ1.show_catalog
categ2.show_catalog

mama = Basket.new('milk', 'cheese')
papa = Basket.new('woter', 'sugar')


user1  = User.new('Alex102', '12345', [mama])
user2  = User.new('malina', '5432', [papa])

user1.items_in_the_cart
user2.items_in_the_cart
binding.pry