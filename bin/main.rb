#!/usr/bin/env ruby
puts 'Welcome to the Tic-Tac-Toe game!'

# Get Player1 name
 puts 'Enter player 1 name'
 player1 = gets.chomp

# Get Player2 name
 puts 'Enter player 2 name'
 player2 = gets.chomp

# Tell Player1 to choose
 puts 'Please select X or O'
 player1_choice = gets.chomp

# Assign the available choice to Player2
 player2_choice = player1_choice == 'X' ? 'O' : 'X'

# Create a variable for all available positions
 available_positions = (1..9)

# Start a loop to check if game is on, then perform the following steps
 game_on = true
 while game_on
      
# First, display an empty board to show players available positions
# Ask Player1 for first move position
 puts "#{player1} please indicate your desired move position"
      
# Gets the position player has chosen and removes it from the possible positions for the next player
 player1_position = gets.chomp.to_i
      
# Checks if position is valid and updates the available positions
# Display the game board with the updated position for Player2
# Repeats same process for Player2
      
# If any of the two players meet the 'WIN condition' (horizontal, vertical or diagonal alignment), display WIN
      
# if WIN or DRAW
 if WIN
 Print the winning player
 else
 Print draw
 end
 game_on = false
 end
 end
