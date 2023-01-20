#Николаю требуется проверить, возможно ли из представленных отрезков условной длины сформировать треугольник.
#Cоздать класс TriangleChecker, принимающий только положительные числа.
#С помощью метода is triangle() возвращаются следующие значения (в зависимости от ситуации):
#1.Ситуация – Ура, можно построить треугольник!;
#2.Ситуация - С отрицательными числами ничего не выйдет!;
#3.Ситуация - Нужно вводить только числа!;
#4.Ситуация - Жаль, но из этого треугольник не сделать.

class TriangleChecker
    attr_accessor :side_a, :side_b, :side_c
    
    def initialize(side_a, side_b, side_c)
        @side_a = side_a
        @side_b = side_b
        @side_c = side_c
    end
    
    
    def is_triangle?
        if side_a.class != Integer || side_b.class != Integer || side_c.class != Integer
            puts 'You only need to enter numbers!'
        elsif side_a + side_b >= side_c && side_c + side_a >= side_b && side_b + side_c >= side_a
            puts 'Hooray, you can build a triangle!'
        elsif side_a.negative? || side_b.negative? || side_c.negative?
            puts 'Nothing will work with negative numbers!'
        else
        puts "It's a pity, but you cant make a triangle out of this!"
       end
    end
end

my_triangle = TriangleChecker.new(2, '', 1)
my_triangle.is_triangle?
