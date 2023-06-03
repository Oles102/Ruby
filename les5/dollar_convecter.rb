puts 'Какая валюта сейчас у вас на руках?
1. Доллары
2. Российские рубли 
3. Беларусские рубли'

man = gets.chomp

puts 'Сколько сейчас стоит 1 доллар в России?'
usd_rate = gets.to_f

puts 'А сколько стоит 1 доллар в Беларуси?'
bel_rate = gets.to_f

puts 'А сколько стоит 100 российских рублей в Беларуси?'
rub_rate = gets.to_f
if man == '1'
	puts 'Сколько у вас долларов?'
	usd = gets.to_f

	rub = (usd * usd_rate).round(2)
	bel = (usd * bel_rate).round(2)

	puts 'Ваши запасы равны:' + rub.to_s + ' рублей' + ' или ' +  bel.to_s +  ' бел.руб'
elsif man == '2'
	puts 'Сколько у вас Российских рублей?'
	rub = gets.to_f
	
	usd = (rub / usd_rate).round(2)
	bel = (rub / bel_rate / 10).round(2)

	puts 'Ваши запасы равны:' + usd.to_s + ' $ ' + ' или ' + bel.to_s + ' бел.руб'
else man == '3'
	puts 'Сколько у вас Беларусских рублей?'
	bel = gets.to_f

	rub = (bel * rub_rate * 10).round(2)
	usd = (bel / bel_rate).round(2)
	puts 'Ваши запасы равны:' + rub.to_s + ' рублей ' + ' или ' + usd.to_s + ' $ '
end