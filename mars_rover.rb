class Rover
	attr_reader :name

	def initialize(x, y, d, name)
		@x = x
		@y = y
		@d = d
		@name = name
		puts "#{@name} has been launched to #{to_s}"
	end

	def read_instruction(instruction)
		instruction.each_char do |c|
			if c == "L"
				turn_left
			elsif c == "R"
				turn_right
			elsif c == "M"
				move
			else
				puts "Re-enter the command"
			end
		end
	end

	def turn_left
		if @d == "N"
			@d = "W"
		elsif @d == "W"
			@d = "S"
		elsif @d == "S"
			@d = "E"
		elsif @d == "E"
			@d = "N"
		end
	end

	def turn_right
		if @d == "N"
			@d = "E"
		elsif @d == "E"
			@d = "S"
		elsif @d == "S"
			@d = "W"
		elsif @d == "W"
			@d = "N"
		end
	end


	def move
		if @d == "N"
			@y += 1
		elsif @d == "E"
			@x += 1
		elsif @d == "S"
			@y -= 1
		elsif @d == "W"
			@x -= 1
		end
	end

	def to_s
		"#{@x}, #{@y}, #{@d}"
	end
end

def rover_start
	puts "what is the name of the rover?"
	name = gets.chomp.to_s
	puts "Where did the rover land?"
	print "x coordinate ="
	x = gets.chomp.to_i
	print "y cooridnate ="
	y = gets.chomp.to_i
	print "The cardinal direction is:"
	d = gets.chomp.upcase
	Rover.new(x,y,d,name)
end

def rover_command(rover)
	puts "Where do you want #{rover.name} to go?"
	command = gets.chomp.upcase
	rover.read_instruction(command)
	puts " #{rover.name}'s location is now: #{rover}"
end

red = rover_start
rover_command(red)

blue =rover_start
rover_command(blue)

