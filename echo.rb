def get_input
  puts "what would you like to say?"
  gets.chomp.to_s
end

def playback(input)
  if input == "Nothing!"
    puts  "Ok fine!"
  elsif input == "I have a lot to say"
    input_array =[]
    until input == "done"
      input = gets.chomp.to_s
      input_array << input
    end
    input_array.pop
    input_amt = input_array.length
    if input_array.length > 2
      puts "You said: #{input_array[0]}"
      input_array.shift
      last = input_array.pop      
      input_array.each do |x|
        puts "Then, you said: #{x}"
      end
      puts "Finally you said: #{last}"
    else
      puts "You said: #{input_array[0]}"
      puts "Finally you said: #{input_array[1]}"
    end
    puts "Phew! Glad you got all #{input_amt} of those things off your chest!"
  else    
    puts "You said: #{input}"
  end
end

playback(get_input)
