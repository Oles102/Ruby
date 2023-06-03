chip = %w[black red green]

loop do
 puts 'Выберите цвет (black, red, green):'
user = gets.strip
 rand = chip.sample
 if rand == user
 	puts "Вы выиграли выпал #{rand}"
 else
 	puts "Вы проиграли выпал #{rand}"
 end
  exit
end