paper = 0
ribbon = 0

ARGF.each_line do |line|
	sides = line.split('x').map(&:to_i)
	paper += 2 * (sides[0] * sides[1] + sides[0] * sides[2] + sides[1] * sides[2]) + sides.inject(:*) / sides.max
	ribbon += sides.inject(:*) + 2 * (sides.inject(:+) - sides.max)
end

puts "Total paper needed: #{paper} square feet"
puts "Total ribbon needed: #{ribbon} feet"
