#Создать массив в рандомном порядке чисел!
#Отсортировать массив без помощи встроенных функций "sort","sort!","sotr_by" и им подобные
#Ввывести массив
numbers = [3,5,21,4,1,76,33]
swap = true
size = numbers.length - 1
while swap
  swap = false
  (0...size).each {|i| swap, numbers[i], numbers[i+1] = true,
     numbers[i+1], numbers[i] if numbers[i] > numbers[i+1]}
  size -= 1
end
print numbers