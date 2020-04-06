#This line send a string to the user and a new line
puts "On va compter le nombre d'heures de travail à THP"

#These lines send strings to the user with the result of the expression contained in #{} followed by a new line
puts "Travail : #{10 * 5 * 11}"
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

#This line send a string to the user and a new line
puts "Et en secondes ?"

#This line send the result of 10*5*11*60*60 to the user and a new line
puts 10 * 5 * 11 * 60 * 60

#This line send a string to the user and a new line
puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

#This line evaluate if 3+2=5 is inf to 2=5-7 which is false and send the answer to the user
puts 3 + 2 < 5 - 7

#These lines send strings to the user with the result of the expression contained in #{} followed by a new line
puts "Ça fait combien 3 + 2 ? #{3 + 2}"
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

#This line send a string to the user and a new line
puts "Ok, c'est faux alors !"

#This line send a string to the user and a new line
puts "C'est drôle ça, faisons-en plus :"

#These lines send strings to the user with the result of the expression contained in #{} which are booleans expressions (true or false) followed by a new line
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"
