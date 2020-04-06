puts ("Bonjour quelle est ton année de naissance ?")
print ("> ")
x_years = gets.chomp.to_i
x_years = 2020 - x_years
n = 0
while x_years >= 0
	puts ("Il y a #{x_years} an(s) tu avais : #{n} an(s)")
	x_years = x_years - 1
	n = n + 1
	end
