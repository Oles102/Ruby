#Создать класс Soda (для определения типа газировки), принимающий 1 аргумент при инициализации (отвечающий за добавку к выбираемому лимонаду). 
#В этом классе реализовать метод show my drink(),если есть 'ДОБАВКА' вывести на экран "Газировка и {Добавка}"
#В случае отсутствия добавки вывести: "Обычная газировка"!
 
class Soda
    attr_reader :ingredient

    def initialize (ingredient)
        @ingredient = ingredient
    end

    def show_my_drink
        if @ingredient > 0
            puts 'У Вас обычная газировка'
        else 
            puts "У Вас Газировка с добавкой #{ingredient}"
        end
    end
end

drink = Soda.new()
drink.show_my_drink
