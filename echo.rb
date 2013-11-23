def get_input
  puts "what would you like to say?"
  gets.chomp.to_s
end

def playback(input)
  puts "You said: #{input}"
end

playback(get_input)
