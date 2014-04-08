file = File.new("story.txt", "r")
while (line = file.gets)
	puts line
end
file.close