n = 1
mail = []
while n <= 9
	mail[n]= "jean.dupont.0#{n}@email.fr"
	if (n % 2 == 0)
		puts mail[n]
	end
	n = n + 1
end
while n <= 50
	mail[n]= "jean.dupont.#{n}@email.fr"
	if (n % 2 == 0)
		puts mail[n]
	end
	n = n + 1
end

#if (n%2 ==0) permet de savoir quand le nombre contenu dans l'adresse mail est pair
