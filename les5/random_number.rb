number = rand(16)
USER_CLICK = 3
puts 'Загадано число от 0 до 15, угадай число ))'

user = gets.to_i

if user == number
	abort 'Ура вы отгадали ) это число' + number.to_s
else
	if user > number
		puts 'Мое число больше)'
	elsif user < number
		puts 'Мое число меньше)'
	end
	if (user - number).abs < 3
		puts 'Уже теплее)'
	else
		puts 'Еще холодно('
	end
end

user = gets.to_i

if user == number 
	abort 'Ура вы отгадали ) это число' + number.to_s
else
	if user > number
		puts 'Мое число больше)'
	else
		puts 'Мое число меньше)'
	end
	if (user - number).abs < 3
		puts 'Уже теплее)'
	else
		puts 'Еще холодно('
	end
end

user = gets.to_i

if user == number 
	abort 'Ура вы отгадали ) это число' + number.to_s
else
	if user > number
		puts 'Мое число больше)'
	else
		puts 'Мое число меньше)'
	end
	if (user - number).abs < 3
		puts 'Уже теплее)'
	else
		puts 'Еще холодно('
	end
end

puts 'В этот раз вам не повезло. Было загадано число ' + number.to_s