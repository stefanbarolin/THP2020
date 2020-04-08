def play
de = rand(1..6)
print ("Lancé du dé ........")
puts ("=> #{de}")
return (de)
end

def move_to_10
floor  = 0
i = 0.00
while floor < 10
	n = play
	if (n == 5 or n == 6)
		floor += 1
		puts ("Le joueur avance d'un cran, nouvelle position : case #{floor}.")
	elsif (n == 1 and floor > 0)
		floor -= 1
		puts ("Le joueur recule d'un cran, nouvelle position : case #{floor}.")
	else
		puts("Le joueur ne bouge pas, position : case #{floor}.")
	end
	puts ("")
	i += 1
end
return i
end

def average_finish_time
total_rounds = 0.00
100.times do
	total_rounds += move_to_10
end
puts ("Il faut en moyenne #{total_rounds/100} parties pour arriver à la 10ème marche") 
end

def perform
	average_finish_time
end

perform
