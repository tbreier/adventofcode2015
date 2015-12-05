total = 0

ARGF.each_line do |line|
	sides = line.split('x').map(&:to_i)
	total += 2 * (sides[0] * sides[1] + sides[0] * sides[2] + sides[1] * sides[2]) + sides.inject(:*) / sides.max
end

puts total