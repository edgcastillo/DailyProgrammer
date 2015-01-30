def acronym(message)
	hash_legend = {"lol" => "laugh out loud", "imo" => "in my opinion", "wp" => "well played", "hf" => "have fun", "g2g" => "got to go" }
	message = message.split(' ')

	message.each_with_index {|word, index|
		if(hash_legend.has_key?(word))
			 message[index] = hash_legend[word]
		end
	}
	message.join(' ')
end

puts acronym("lol that was unfair")
puts acronym("imo that was wp Anyway I've g2g hf") #program doesn't translate when word has a period or comma. Check later