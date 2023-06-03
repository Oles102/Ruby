class Camelio
	attr_accessor :color

	def initialize(color)
		@color = color
		puts "Теперь я #{color}"
	end
end


camelio = Camelio.new('Красный')

sleep 1

camelio1 = Camelio.new('Red')

sleep 1

camelio2 = Camelio.new('Green')