pages_with_questions = {}

lines_grabbed = ""
key = ""

File.open("story.txt", "r") do |infile|
  while (line = infile.gets)
  	# are we on an identifier?
    if line.index("~p")
    	key = line

    	# reset lines grabbed, because we've begun a new 
    	# section between identifiers
    	lines_grabbed = ""
    else
      lines_grabbed += line
    end
    pages_with_questions[key] = lines_grabbed
  end
end

p1 = pages_with_questions.select do |key,value|
	key.index("~p1")
end

p1.each do |k,v|
  puts k.slice(4,2) + " ==> " + v
end

input = gets.chomp
if input == "c1"
  print "Success! The eggs are super fluffy and delicious. You are full and ready
for the day."
elsif input =="c2"
  print "You are not hungry this morning, but your taste buds are crying for better."
else
  print "You got tied up in a conversation with your friend arguing about the
merits of your recipe vs Gordon's. As a result you spent $15 on a lame 
breakfast at the café, because you had no time to cook."
end
