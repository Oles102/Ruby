time = Time.now
 week_day = time.wday

 if week_day == 0 || week_day == 6
 	puts 'Сегодня выходной'
 else
 	puts 'Сегодня будний день пора за работу!'
 end