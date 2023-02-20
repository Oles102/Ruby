#Реализовать класс Student, который будет наследоваться от класса User
#Этот класс должен иметь свойства :
#name <= наследуется от класса User
#surname <= наследуется от класса User
#И свойство year ( год поступления в вуз)
#Класс должен иметь метод full_name <= наследуется от класса User,
#который выводит имя и фамилию студента  
#Также класс должен иметь метод cource(), который выводит текущий курс студента (от 1 до 5)
#Курс вычисляется так:
# от текущего года отнять год поступления в вуз.Текущий год получите самостоятельно.

class User
    
    attr_reader :name, :surname

    def initialize(name, surname)
        @name = name
        @surname = surname
    end
end

class Student < User
    MAX_COURSE = 5

    attr_accessor :year

    def initialize(name, surname, year)
        @year = year
        super(name, surname)
    end

    def full_name
        puts "Student #{name} #{surname}"
    end

    def cource
        time = Time.now
        now_cource = time.year - @year
        puts "Student on #{now_cource} course!"
        if now_cource <= MAX_COURSE
            puts "Are you still learning!!"
        else
            puts "You are not a student."
        end
    end
end

oles = Student.new('Олесь', 'Четвертнёв', 2017)
oles.full_name
oles.cource