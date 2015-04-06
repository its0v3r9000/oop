class People
	def initialize(name)
		@name = name
	end

	def my_name_is
		puts "My name is #{@name}"
	end

end

class Teacher < People
	def teach
		puts "Everything in Ruby is an Object!"
	end

end

class Student < People
	def learn
		puts "I get it!"
	end
end

chris = Teacher.new("chris")
christina = Student.new("christina")
chris.my_name_is
chris.teach
christina.my_name_is
christina.learn

# The classes cannot call functions hidden within another class that they do not inherit from.
