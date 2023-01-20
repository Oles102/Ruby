#Создать массив в рандомном порядке чисел!
#Отсортировать массив без помощи встроенных функций "sort","sort!","sotr_by" и им подобные
#Ввывести массив
numbers = [3, 5, 21, 4, 1, 76, 33]
size = numbers.length
 
loop do
  swap = false
  (size - 1).times do |i|
    if numbers[i] > numbers[i + 1]
     numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
     swap = true
    end
  end
  break unless swap
end
print numbers