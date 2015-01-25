=begin
Given the following constraints of the ISBN number, you should write a function that can return True if a number is a valid ISBN and False otherwise.
An ISBN is a ten digit code which identifies a book. The first nine digits represent the book and the last digit is used to make sure the ISBN is correct.
To verify an ISBN you :-
obtain the sum of 10 times the first digit, 9 times the second digit, 8 times the third digit... all the way till you add 1 times the last digit. 
If the sum leaves no remainder when divided by 11 the code is a valid ISBN.
For example :
0-7475-3269-9 is Valid because
(10 * 0) + (9 * 7) + (8 * 4) + (7 * 7) + (6 * 5) + (5 * 3) + (4 * 2) + (3 * 6) + (2 * 9) + (1 * 9) = 242 which can be divided by 11 and have no remainder.
For the cases where the last digit has to equal to ten, the last digit is written as X. For example 156881111X.	
=end




def isbn_validator
	arr_of_random_digits = Array.new
	valid_isbn_number = 0
	(1..10).each do
        arr_of_random_digits.push(rand(0..9))		
	end
	valid_isbn_number = add_digits(arr_of_random_digits)
	if(valid_isbn_number % 11 == 0)
		puts "ISBN validated on first try"
		p format_isbn(arr_of_random_digits)
	else
		puts "ISBN sequence not valid, will attemp to add 10 to last number of the sequence"
		arr_of_random_digits[9] = 10
		valid_isbn_number = add_digits(arr_of_random_digits)
		if(valid_isbn_number % 11 == 0)
			puts "ISBN validated on second try"
			p format_isbn(arr_of_random_digits)
		else
			puts "ISBN cannot be validated, and it will be destroyed"
		end
	end
end

def add_digits(arr_of_random_digits)
	total = 0
	arr_of_random_digits.each_with_index {|number, index| total += ((arr_of_random_digits.length - index) * number)} # add isbn to total
	return total #total is send back to isbn_validator if the total divided by 11 has no remainder then is a valid isbn 
end

def format_isbn(arr_of_random_digits)
	isbn = ""
	arr_of_random_digits.each_with_index { |digit, index|
		if(arr_of_random_digits.last)
			if(digit == 10)
				digit = "X"
			end
		end
		isbn = isbn + digit.to_s
	}

	return isbn[0] + "-" +isbn[1..4] + "-" +isbn[5..8] + "-" +isbn[9]
end

isbn_validator