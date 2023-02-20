#По диаграмме (из слайда №6 ) классов создать иерархию. Реализовать все принципы ООП


class Mammal
 
    attr_accessor :name, :speak, :food

    def initialize(name, speak, food)
        @name = name
        @speak = speak
        @food = food
    end
end

class Cat < Mammal

    attr_accessor  :breed

    def initialize(name, speak, food, breed)
        @breed = breed
        super(name, speak, food)
    end

end

class BritishCat < Cat

    def say
        puts 'Meow-Meow'
    end
end


class Dog < Mammal

    attr_accessor :color

    def initialize(name, speak, food, color)
        @color = color
        super(name, speak, food)
    end

    def like
        puts 'I like walking'
    end

    
end

class GermanShepherd < Dog
    
    def bark
        puts "Gav..Gav.."
    end
end


class Horse < Mammal
    
     def initialze
        super(name, speak, food)
     end
end

class Palomino < Horse
     
    def sleep
        puts "#{@name} is sleeping"
    end
    
end

class Elephant < Mammal

    def eat_food
        puts "#{@name} eats #{@food}"
    end
    
end


# Cat 

keks = Cat.new('Keks', 'Meow-Meow', 'Meat', 'British')
semen = BritishCat.new('Semen', 'Mrrrrr', 'Meat', 'Seyamsky')
semen.say

# Dog

mikki = Dog.new('Mikki', 'Gav-Gav', 'Dog food', 'Brown')
mikki.like
leapold = GermanShepherd.new('Leapold', 'Gav', 'Meat', 'Black')
leapold.bark
leapold.like


# House 
anna = Horse.new('Anna', 'Iggo', 'grass')
billy = Palomino.new('Billy', 'myyy', 'grass')
billy.sleep

# Elephant

moby_dik = Elephant.new('Moby', 'Yyyyyyy', 'plankton')
moby_dik.eat_food
