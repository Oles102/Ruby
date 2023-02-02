#Есть строка из разных скобок "пример: ())({[{})})]"
#Создать метод стека для проверки на true и false
#Проверить на валидность открытых и закрытых скобок!!!
def valid_string?(str)
    brackets = {')' => '(', '}' => '{', ']' => '['}
    stack =[]

    str.each_char do |bracket|
        if ['(','{','['].include?(bracket)
        stack << bracket
        elsif [')','}',"]"].include?(bracket)
          return false if stack.empty? || brackets[bracket] != stack.last
            
          stack.pop
        end
    end
    stack.empty?
end

puts valid_string?('[ ]')                  # returns true
puts valid_string?('[  ')                  # returns false
puts valid_string?('[ ( text ) {} ]')      # returns true
puts valid_string?('[ ( text { ) } ]')     # returns false