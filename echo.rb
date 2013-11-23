def get_input
  puts "what would you like to say?"
  gets.chomp.to_s
end

def playback(input)
  if input == "Nothing!"
    puts  "Ok fine!"
  elsif input == "I have a lot to say"
    puts "I don't have time for that right now!"
  else    
  puts "You said: #{input}"
  end
end

playback(get_input)
