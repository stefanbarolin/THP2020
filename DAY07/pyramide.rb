puts ("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?")
print ("> ")
n = gets.chomp.to_i
y = 0
puts ("Voici la pyramide :")
until y > n - 1
	x = 0
	until x > n - 1
		if x < n - 1 - y
			print (" ")
		else
			print ("#")
		end
		x = x + 1
	end
	puts ("")
	y = y + 1
end

#La boucle imprime un carré de "#" d'une taille n*n, lorsque x < n - 1 - y c'est à dire qu'on est du côté gauche de la diagonale, on imprime un espace à la place d'un "#"
