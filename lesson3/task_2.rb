#Создать хеш!!!
#Положить туда все месяцы года!
#Каждому месяцу присвоить его количество дней!
#Создать цикл при котором будут выводиться месяцы с количетвом дней равным 30!
months = {
    january: 31,
    february: 28,
    march: 31,
    april: 30,
    may: 31, 
    june: 30,
    july: 31,
    august: 31,
    september: 30,
    october: 31,
    november: 30,
    december: 31,
}
months.each {|month, days| puts month if days == 30}