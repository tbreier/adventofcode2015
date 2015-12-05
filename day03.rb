# Init houses & Start location
houses = Hash.new { |hash, key| hash[key] = 0 }
curr = [0,0]
houses[curr] += 1

ARGF.each_line do |line|
	line.each_char do |direction|
		case direction
		when '>'
			curr[0] += 1
		when '<'
			curr[0] -= 1
		when '^'
			curr[1] += 1
		when 'v'
			curr[1] -= 1
		else
			break # Done
		end
		houses["#{curr[0]},#{curr[1]}"] += 1
	end
end

puts houses.keys.length