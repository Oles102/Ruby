#Создать класс Soda (для определения типа газировки), принимающий 1 аргумент при инициализации (отвечающий за добавку к выбираемому лимонаду). 
#В этом классе реализовать метод show my drink(),если есть 'ДОБАВКА' вывести на экран "Газировка и {Добавка}"
#В случае отсутствия добавки вывести: "Обычная газировка"!
 
class Soda
    attr_reader :ingredient

    def initialize (ingredient = nil)
        @ingredient = ingredient
    end

    def show_my_drink
        if @ingredient == nil
            puts 'Soda without additives'
        else 
            puts "Soda with additive #{ingredient}"
        end
    end
end

drink = Soda.new('Apple')
drink.show_my_drink
