#Есть строка из разных скобок "пример: ())({[{})})]"
#Создать метод стека для проверки на true и false
#Проверить на валидность открытых и закрытых скобок!!!
def valid_string?(str)
    brackets = {'(' => ')', '{' => '}', '[' => ']'}
    stack =[]

    str.each_char do |bracket|
        stack << bracket if brackets.key?(bracket)
        return false if brackets.key(bracket) && brackets.key(bracket) != stack.pop
    end
    stack.empty?
end

puts valid_string?('[ ]')                  # returns true
puts valid_string?('[  ')                  # returns false
puts valid_string?('[ ( text ) {} ]')      # returns true
puts valid_string?('[ ( text { ) } ]')     # returns false