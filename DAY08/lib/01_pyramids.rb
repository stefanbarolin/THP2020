def full_pyramid (n)
	y = 0
	until y > n - 1
		x = 0
		until x > 2 * n
			if x < n - 1 - y
				print (" ")
			elsif x > n - 1 + y
				print(" ")
			else
				print ("#")
			end
			x = x + 1
		end
		puts ("")
		y = y + 1
	end
end

def reverse_pyramid (n)
	y = 0
	until y > n - 1
		print (" ")
		x = 0
		until x > 2 * n
			if (x >= y and x <= 2 * (n - 1) - y)
				print ("#")
			else
				print (" ")
			end
			x = x + 1
		end
		puts("")
		y = y + 1
	end
end

def perform
	n = 0
	while (n % 2 == 0)
		puts ("Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?")
		print ("> Saisir un nombre impair :")
		n = gets.chomp.to_i
	end
	puts ("Voici la pyramide :")
	full_pyramid((n/2 + 1))
	reverse_pyramid((n/2 + 1) - 1)
end

perform
