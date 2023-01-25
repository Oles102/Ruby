#Взять несколько предметов, которые меня окружают.
#Описать их как классы.
#Создать по обьекту каждого класса 
#Сравнить их поведение.

# Мои предметы:
#1. Ноутбук ASUS 
#2. Телефон Xiaomi 

class Laptop
    attr_reader :brand
    
    def initialize(brand)
        @brand = brand
    end 

    def seria 
        puts "My laptop is #{brand}"
    end
    
end

my_laptop = Laptop.new('Asus')
my_laptop.seria



class SmartPhone
    attr_reader :model, :brands

    def initialize(model, brands) 
        @model = model
        @brands = brands
    end

    def info 
        puts "My smatrphone is #{brands}"
    end

    def serial
        puts "My smartphone is serial number #{model}"
    end
end

my_smart = SmartPhone.new('Xiaomi', 'Redmi note 9pro')
my_smart.info
my_smart.serial