puts ("Bonjour quelle est ton année de naissance ?")
print ("> ")
year = gets.chomp.to_i
n = 0
while year <= 2020
	puts ("En #{year} tu avais : #{n} an(s)")
	year = year + 1
	n = n + 1
	end
