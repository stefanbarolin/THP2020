def signup
	puts ("Please define a password :")
	print ("> ")
	return (gets.chomp)
end

def login(first_word)
	puts ("Please confirm your password :")
	print ("> ")
	while (gets.chomp != first_word)
		puts ("Wrong password, please try again !")
		print ("> ")
	end
	return true
end

def welcome_screen
	puts("WELCOME TO YOUR ACCOUNT")
end


def perform
	if (login(signup))
		welcome_screen
	end
end

perform
