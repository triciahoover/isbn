def get_isbn(isbn_number)
	isbn_array = isbn_number.split("") {
		|s| s.to_i
	}
	isbn_array.count
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
	