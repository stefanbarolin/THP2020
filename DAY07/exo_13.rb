puts ("Give me your year of birth please :")
print ("> ")
year = gets.chomp.to_i
while  year <= 2020
	puts year
	year = year + 1
end
