# 1. Создать класс Animal и расширяющие его классы Dog, Cat, Horse. 
#    Класс Animal должен содержать переменную класса, отвечающую за количество созданных объектов. 
#    Также у него должен быть метод класса, выводящий это количество.
# 2. Класс Animal содержит переменные food, location и методы makeNoise, eat, sleep.
#    Метод makeNoise, например, может выводить на консоль "Такое-то животное спит".
# 3. Классы Dog, Cat, Horse переопределяют методы makeNoise, eat.
# 4. Добавьте переменные в классы Dog, Cat, Horse, характеризующие только этих животных.
# 5. Создайте класс Ветеринар, в котором определите метод treatAnimal(animal).
#    Пусть этот метод распечатывает food и location пришедшего на прием животного.
# 6. Создайте массив различных животных, в который запишите животных всех имеющихся у вас типов.
#    В цикле отправляйте их на прием к ветеринару. 
# 7. Выведите их количество.

require 'pry'
class Animal
    @@animals_size = 0

    attr_accessor :food, :location

    def initialize(food, location)
        @food = food
        @location = location
        @@animals_size += 1
    end

    def self.animals
        puts @@animals_size
    end

    def makenoise
        puts "#{self.class} makes noise"
    end

    def eat
        puts "#{self.class} eats"
    end

    def sleep
        puts "#{self.class} sleeping"
    end

end


class Dog < Animal
    
    attr_accessor :breed, :name

    def initialize(breed, name, food, location) 
        @breed = breed
        @name = name
        super(food, location)
    end

    def makenoise
        puts "#{@name} makes noise"
    end

end

class Cat < Animal

    attr_accessor :name

    def initialize(name,food, location)
        @name = name
        super(food, location)
    end

    def eat
        puts "#{name} eats #{food}"
    end

end

class Horse < Animal

    attr_accessor :name

    def initialize(name,food, location)
        @name = name
        super(food, location)
    end

   def sleep
    puts "#{name} sleeping"
   end
end

class Veterinar
    attr_accessor :name, :surname

    def initialize(name, surname)
        @name = name
        @surname = surname
    end

    def treatAnimal(animal)
        puts "#{animal.food} #{animal.location}"
    end
end

common_animal = Animal.new('food', 'location')
keks = Cat.new('Keks', 'meat', 'cottage')
mikki = Dog.new('Spaniel', 'Mikki', 'feed', 'cottage')
dolly = Horse.new('Dolly', 'apple', 'hangar')
doctor = Veterinar.new('Dmitriy', 'Rabtsevich')
binding.pry
arr = [keks, mikki, dolly]

arr.each { |animal| doctor.treatAnimal(animal)}

puts Animal.animals