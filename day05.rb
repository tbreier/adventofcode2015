nice = 0

ARGF.each_line do |line|
	vowels = line =~ /[aeiou].*[aeiou].*[aeiou]/
	twice = line =~ /(.)\1+/
	forbidden = line =~ /ab|cd|pq|xy/

	#puts "Vowels   : #{!!vowels}"
	#puts "Twice    : #{!!twice}"
	#puts "Forbidden: #{!forbidden}"
	#puts "RESULT   : #{(vowels && twice && !forbidden) ? 'NICE' : 'NAUGHTY'}"

	nice += 1 if vowels && twice && !forbidden
end

puts nice