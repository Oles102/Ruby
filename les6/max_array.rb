arr = []

puts 'Какой длины должен быть ваш массив?'
user = gets.to_i

index = 0

while index < user do
  	arr << rand(100)
  	index += 1
end

puts arr.to_s

max_value = 0 

for item in arr do 
	if item > max_value
		max_value = item
	end	
end

puts 'Самое большое число массива :'
puts max_value.to_s