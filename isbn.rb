def get_isbn(isbn_number)
	isbn_array = isbn_number.split("") {
		|s| s.to_i
	}
	isbn_array.count
end

def valid_isbn(isbn_number)
	isbn_number = isbn_number.split("") {
		|s| s.to_i
	}	
	counter = 10
	while counter > 1
		isbn.number.each do |digit|
			isbn_addition = []
			isbn_addition <= digit * counter
			counter = counter - 1
		end
		isbn_addition.each do |number|
			isbn_total = isbn_addition.inject(number, :+)
		end
	end	
	
	while counter < 10
		counter = 1
		isbn.number.each do |digit|
			isbn_addition_reverse = []
			isbn_addition_reverse <= digit * counter
			counter = counter + 1
		end
		isbn_addition_reverse.each do |number|
			isbn_total_reverse = isbn_addition_reverse.inject(number, :+)
		end
	end	
	if isbn_total % 11 == 0 && isbn_total_reverse % 11 == 0
		result = true
		puts "#{result} is a valid ISBN number"
	else
		result = false
		"Sorry, #{result} is not a valid ISBN number"
	end		

end		
	


def string_length?(isbn_number)
	if isbn_number.length == 10
		true
	else
		false
	end
end

def check_length()
	if string_length() == true
		get_isbn()
	else
		p "Must be 10 digits"
	end
end
	

valid_isbn("9452175684")