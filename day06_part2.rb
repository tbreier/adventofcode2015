grid = Array.new(1000) { Array.new(1000) {0} }

ARGF.each_line do |line|
	command = line[/\D*/].strip
	coords = line.scan(/\d+/).map(&:to_i)
	from_x = coords[0]
	from_y = coords[1]
	to_x = coords[2]
	to_y = coords[3]

	for x in from_x..to_x do
		for y in from_y..to_y do
			case command
			when 'turn on'
				grid[x][y] += 1
			when 'turn off'
				grid[x][y] = [grid[x][y] - 1, 0].max
			when 'toggle'
				grid[x][y] += 2
			end
		end
	end

end

puts grid.inject(0) { |sum, col| sum + col.inject(:+) }   

