#Создать классы Figure, Circle, Square, Rectangle, Triangle
#Реализовать иерархию классов с методами area() и perimetr()
#которые возвращают площадь и периметр фигуры.
#Использовать Полиморфизм.


class Figure
    attr_accessor :side_a 

    def initialize(side_a)
        @side_a = side_a
    end
end

class Circle < Figure
    PI = 3.14

    def area
        puts "Area circle #{PI * side_a**2}"
    end

    def perimetr
        puts 'Perimetr circle ' +  (2 * PI * side_a).round(1).to_s
    end
end

class Square < Figure

    def area
        puts "Area square #{side_a**2}"
    end

    def perimetr
        puts "Perimetr square #{side_a * 4}"
    end
end

class Rectangle < Figure

    attr_reader :side_a, :side_b

    def initialize(side_a, side_b)
        @side_b = side_b
        super(side_a)
    end

    def area
        puts " Area rectangle #{side_a * side_b}"
    end

    def perimetr
        puts "Perimetr rectangle #{(side_a * side_b) * 2}"
    end
end

class Triangle < Figure

    attr_reader :side_b, :height
    
    def initialize(side_a, side_b, height)
        @height = height
        @side_b = side_b
        super(side_a)
    end

    def area
        puts "Area triangle #{(side_a * height) / 2}"
    end

    def perimetr
        puts "Perimetr triangle #{side_a + side_b + height}"
    end
end

circle = Circle.new(5)
circle.area
circle.perimetr

square = Square.new(4)
square.area
square.perimetr

rectangle = Rectangle.new(6, 9)
rectangle.area
rectangle.perimetr

triangle = Triangle.new(4, 8, 11)
triangle.area
triangle.perimetr