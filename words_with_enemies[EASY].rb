def word_enemies(string_one, string_two)
	long_string = (string_one + string_two).chars do |letter|
		if(string_one.include?(letter) && string_two.include?(letter))
			string_one.sub!(letter, '')
			string_two.sub!(letter, '')
		end
	end
	if(string_one.size > string_two.size)
		puts "Left side wins with #{string_one.size} left: #{string_one}"
	elsif(string_one.size < string_two.size)
		puts "Right side wins with #{string_two.size} left: #{string_two}"
	else
		puts "It's a tie: Left side has: #{string_one} and Right side has: #{string_two}"
	end
end
	
	





puts "Welcome to Words with Enemies!"

string_one = gets.chomp
string_two = gets.chomp

puts word_enemies(string_one, string_two)