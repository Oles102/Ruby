#1. Создать класс Car в модуле Vehicles, класс Engine в модуле Professions.
#2. Создать класс Driver.
#   Класс Driver содержит поля - ФИО, стаж вождения. 
#3. Создать класс Engine содержит поля - мощность, производитель.
#4. Класс Car содержит поля - марка автомобиля, класс автомобиля, вес, 
#   водитель типа Driver, мотор типа Engine.
#4.1 Методы start(), stop(), turnRight(), turnLeft(),
#   которые выводят на печать: "Поехали", "Останавливаемся", "Поворот направо" или "Поворот налево". 
#4.2 А также метод to s(), который выводит полную информацию об автомобиле, ее водителе и моторе.
#5. Создать производный от Car класс  - Lorry (грузовик), характеризуемый также грузоподъемностью кузова.
#6. Создать производный от Car класс - SportCar, характеризуемый также предельной скоростью.
#7. Пусть класс Driver расширяет класс Person.


module Vehicles
    class Car 
        attr_accessor :brend_car, :class_car, :weight, :driver, :engine
        def initialize(brend_car, class_car, weight)
            @brend_car = brend_car
            @class_car = class_car
            @weight = weight
            @driver = driver
            @engine = engine
        end

        def start
            puts "Let's go!"
        end

        def stop
            puts 'Brake we have arrived!'
        end
        
        def turnRight
            puts 'Turn right!!'
        end

        def turnLeft
            puts 'Turn left!!'
        end

        def to_s
            puts "Auto: #{@brend_car}, class auto: #{@class_car}, weight auto : #{@weight}, motor auto:  #{@engine.manufacturer} #{@engine.power}."
            puts "Driver auto: #{@driver.name} #{@driver.surname}, driver experience: #{@driver.experience}"
        end
    end
end


class Lorry < Vehicles::Car
    attr_reader :load_capacity

    def initialize(load_capacity,brend_car, class_car, weight)
        @load_capacity = load_capacity
        super(brend_car, class_car, weight)
    end
end

class SportCar < Vehicles::Car

    attr_accessor :speed_max

    def initialize(speed_max, brend_car, class_car, weight)
        @speed_max = speed_max
        super(brend_car, class_car, weight)
    end
end


module Accessories
    class Engine
        attr_accessor :power, :manufacturer
        def initialize(power, manufacturer)
            @power = power
            @manufacturer = manufacturer
        end
    end
end

class Person
    attr_accessor :name

    def initialize(name)
        @name = name
    end
 end

class Driver < Person
    attr_accessor :surname, :experience
    def initialize(name, surname, experience)
        @surname = surname
        @experience = experience
        super(name)
    end
end

 
