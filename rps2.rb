# Rock Paper Scissors Program

CHOICES = { 'R' => 'Rock', 'P' => 'Paper', 'S' => 'Scissors'}
puts "                                "
puts "Let\'s play Rock Paper Scissors!"
puts "                                "

def display_win(winners_choice)
  case winners_choice
  when 'R'
    puts "Rock beats scissors." 
  when 'P'
    puts "Paper beats rock."
  when 'S'
    puts "Scissors beats paper."
  end
end


loop do
# Player makes choice
  begin
    puts "Pick one: R, P, S"
    player_input = gets.chomp.upcase
  end until CHOICES.keys.include?(player_input)

# Computer makes choice

  computer_input = CHOICES.keys.sample
    puts "Computer picked #{computer_input}"

  if player_input == computer_input
    puts "It's a tie."
  elsif (player_input == 'P' && computer_input == 'R') || (player_input == 'R' && computer_input == 'S') || (player_input == 'S' && computer_input == 'P')
    display_win(player_input)
      puts "You won!"
  else 
    display_win(computer_input)
      puts "Computer won."

    puts "Want to play again? (Y/N)"
    break if gets.chomp.upcase != 'Y'
  end
end



puts "Peace out!"



