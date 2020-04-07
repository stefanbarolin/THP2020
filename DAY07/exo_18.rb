n = 1
#initialisation d'une array
mail = []

#une boucle pour la remplir jusqu'à 9
while n <= 9
	mail[n]= "jean.dupont.0#{n}@email.fr"
	puts mail[n]
	n = n + 1
end
#une boucle pour la remplir jusqu'à 10
while n <= 50
	mail[n]= "jean.dupont.#{n}@email.fr"
	puts mail[n]
	n = n + 1
end
