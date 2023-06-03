names = ['Камень', 'Ножницы', 'Бумага']

computer_input = rand(3)

puts 'Введите ваш вариант : 
	0 - Камень
	1 - Ножницы 
	2 - Бумага'

user_input = gets.to_i

puts 'Компьютер выбрал: ' + names[computer_input]
puts 'Вы выбрали : ' + names[user_input]

if user_input == computer_input
	puts 'У Вас Ничья'
elsif user_input == 0 && computer_input == 1
	puts 'Вы выиграли'
elsif user_input == 1 && computer_input == 2
	puts 'Вы выиграли'
elsif user_input == 2 && computer_input == 0
	puts 'Вы выиграли'
else
	puts 'Выиграл компьютер(('
end