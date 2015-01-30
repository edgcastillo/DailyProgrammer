=begin
	My implementation of bubble sort in Ruby
=end
def bubble_sort(array)
	sorted_array = false
	sorting_counter = 0
	array_size_control = 0 #Not using this right now, for later optimization of the bubble_sort algorithm
	while(sorted_array == false) #runs while the array is not completely sorted
		(0..array.size - (1 + array_size_control)).each do |x| #again array_size_control not actually needed
			if (array[x + 1].nil? == false) #this if will execute until we reach the last element of the array
				if(array[x] > array[x + 1])
					temp = array[x]
					array[x] = array[x + 1]
					array[x + 1] = temp
					sorting_counter += 1
				end
			elsif(sorting_counter == 0) #if last element of the array is reached, check if there was any sort in the array 
				sorted_array = true # if there was not sort in the array, it means the array is already sorted and it will exit
			else
				sorting_counter = 0 #otherwise it will set the counter back to 0 and start again
			end
		end
		
	end
	p array
end

bubble_sort([3,2,9,8,5,9,6,1])