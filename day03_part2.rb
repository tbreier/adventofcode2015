# Init houses & Start location
houses = Hash.new { |hash, key| hash[key] = 0 }
human = [0,0]
robot = [0,0]
houses["0,0"] += 2

santas = [human, robot]
turn = 0

ARGF.each_line do |line|
	line.each_char do |direction|
		case direction
		when '>'
			santas[turn][0] += 1
		when '<'
			santas[turn][0] -= 1
		when '^'
			santas[turn][1] += 1
		when 'v'
			santas[turn][1] -= 1
		else
			break # Done
		end
		houses["#{santas[turn][0]},#{santas[turn][1]}"] += 1
		turn = (turn + 1) % 2
	end
end

puts houses.keys.size