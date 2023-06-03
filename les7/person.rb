class Person
	attr_accessor :name, :user_name, :age

	def initialize(name, user_name, age)
		@name = name
		@user_name = user_name
		@age = age
	end

	def old?
		return @age >= 60
	end

	def full_name
		if old?
			puts "#{@name}  #{@user_name}"
		else
			@user_name
		end
		
	end

	def age
		return @age
	end
end


men = Person.new('Vlad', 'Pupkin', 41)
girl = Person.new('Vera', 'Alibaba', 65)

puts men.full_name
puts "И ему #{men.age} - #{men.old? ? 'пожилой' : 'молодой'}"


puts girl.full_name
puts "И ему #{girl.age} - #{girl.old? ? 'пожилой' : 'молодой'}"