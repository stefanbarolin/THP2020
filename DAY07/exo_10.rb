puts ("Bonjour quelle est ton année de naissance ?")
print ("> ")
user_birth_year = gets.chomp.to_i
puts ("En 2017, vous avez eu : #{2017 - user_birth_year}")
