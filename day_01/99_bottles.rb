def bottles_text number_of_bottles
  return 'no more bottles of beer' if number_of_bottles.zero?
  "#{number_of_bottles} #{number_of_bottles > 1 ? 'bottles' : 'bottle'}"
end

def compose_first_line(number_of_bottles)
  "#{bottles_text(number_of_bottles)} of beer on the wall, #{bottles_text(number_of_bottles)} of beer.\n"
end

def compose_second_line(number_of_bottles, start_number)
  return "Take one down and pass it around, #{bottles_text(number_of_bottles - 1)} of beer on the wall." if number_of_bottles > 0
  "Go to the store and buy some more, #{bottles_text(start_number)} of beer on the wall."
end

def bottles_of_beer_on_the_wall_song start_number
  start_number.downto(0).map do |number_of_bottles|
    compose_first_line(number_of_bottles) + compose_second_line(number_of_bottles, start_number)
  end.join("\n\n")
end

puts bottles_of_beer_on_the_wall_song(99)
