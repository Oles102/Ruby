#Прописать алфавит как массив!
#Прописать массив с гласными буквами из алфавита !
#Создать хеш
#Заполнить хеш гласными буквами с порядковым значением их в алфавите!
alphabet = ('а'..'я')
vowels = ['а','е','ё','и','о','у','ы','э','ю','я']
vowels_hash ={}
('а'..'я').each_with_index do |vowel, index|
    if vowels.include?(vowel) 
        vowels_hash[vowel] = index + 1
    end
end
puts vowels_hash