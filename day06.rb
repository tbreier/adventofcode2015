grid = Array.new(1000) { Array.new(1000) {false} }

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
				grid[x][y] = true
			when 'turn off'
				grid[x][y] = false
			when 'toggle'
				grid[x][y] = !grid[x][y]
			end
		end
	end

end

puts grid.inject(0) { |sum, col| sum + col.inject(0){ |sum, bulb| sum + (bulb ? 1 : 0) } }   

