valores = []

print "digite os 3 valores separados por espaço: "
inputs = gets.chomp.split(" ")

valores.push(*inputs)
cubicos = valores.map { |v| v.to_i**3 }

puts "valores originais: #{valores}"
puts "valores elevados a 3: #{cubicos}"


