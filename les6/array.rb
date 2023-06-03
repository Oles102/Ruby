cars = [
	"toyota",
	"bmw",
	"lada",
	"kia",
	"porshe",
	"hummer",
	"mercedes",
	"nissan"
]

puts ' У нас всего ' + cars.size.to_s + ' машин. Вам какую? '

user = gets.to_i - 1

if user >= 0 && user < cars.size
	puts 'Поздравляем, Вы получили:'
	puts cars[user]
else
	puts 'Извините, машины с таким номером у нас нет('
end