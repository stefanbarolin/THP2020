def ask_first_name
	puts ("First name please ?")
	return (gets.chomp)
end

def say_hello (first_name)
	puts ("Hello #{first_name} !")
end

def perform
	say_hello (ask_first_name)
end

perform
