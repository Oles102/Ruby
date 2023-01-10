#Создать массив !!
#Заполнить массив числами Фибоначи до значения 100!

fibonacci = [0, 1]

loop do
    next_fib = fibonacci[-1] + fibonacci[-2]
    break if next_fib >= 100
    fibonacci << next_fib
end
print fibonacci