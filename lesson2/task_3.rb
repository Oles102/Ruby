#Попросить ввести значение основания (а)!
#Попросить ввести значение высоты (h)!
#Составить формулу вычисления площади треугольника!
#Вывести конечный результат на экран!
loop do
  puts 'Введите значение основания треугольника!'
  a = gets.to_f
  puts 'Введите значение высоты треугольника!'
  h = gets.to_f
  s = a*h*0.5
  puts "Площадь Вашего треугольника равна #{s}"
end
    