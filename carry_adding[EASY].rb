require 'matrix'
def carry_adding(s)
	s = s.split('+')
	arr_of_digits = []
	matrix = Matrix[]
	s.each {|number|
		(0..number.length - 1).each do |x|
			arr_of_digits.push(number[x])
		end
	}
	matrix = Matrix[matrix.to_a << arr_of_digits]
end
















carry_adding("23+9+66+2")