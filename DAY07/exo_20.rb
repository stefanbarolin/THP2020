puts ("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?")
print ("> ")
n = gets.chomp.to_i
y = 1
puts ("Voici la pyramide :")
until y > n
	x = y
	until x <= 0
		print ("#")
		x = x - 1
	end
	puts ("")
	y = y + 1
end
