puts ("Give a number please :")
print ("> ")
number = gets.chomp.to_i
while  number >= 0
	puts number
	number = number - 1
end
