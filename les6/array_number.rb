arr = []

puts 'Введите число:'
number = gets.to_i

index = 1 
summa = 0

while index <= number do
	arr << index
	summa += index
	index += 1 
 end 

puts arr.to_s
puts arr.sum 