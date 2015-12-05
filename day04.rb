require 'digest/md5'

ARGF.each_line do |line|
	print 'Working...'
	line = line.strip
	i = 0

	loop do
		if Digest::MD5.hexdigest("#{line}#{i}").start_with?('00000')
			puts "\n#{i}"
			break
		end
		i += 1
		print "\rWorking... #{i}" if i % 10000 == 0
	end
end