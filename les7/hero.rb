puts "Врага какого героя вы хотите узнать ?"

hero = gets.chomp

heros_antiheros = {
	"Бэтмен" => "Джокер"
	"Холмс" => "Мариарти"
	"Буратино" => "Карабас-Барабас"
	"Моцарт" => "Сальери"
}

if heros_antiheros.has_key?(hero)
	puts "Враг этого героя: #{heros_antiheros[hero]}"
else
	puts "Не удалось найти врага"
end