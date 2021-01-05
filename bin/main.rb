#!/usr/bin/env ruby

# METHODS
new_game = Game.new
new_game.display_instruction
abort if new_game.player_response == 'q'

loop do
  player1, player2 = new_game.player_name
  game_board = Board.new
  player1 = Player.new(player1, 'X')
  player2 = Player.new(player2, 'O')

  new_game.display_name_symbol(player1, player2)
  new_game.display_board(game_board.board)
  current_player = player1

  loop do
    puts "#{current_player.symbol} #{current_player.name}: "
    puts 'which position do you want to take?:'
    position = gets.chomp.to_i
    position = new_game.validate_position(position, game_board.board)
    game_board.update_board(current_player, position, player1, player2)

    break if new_game.game_status?(game_board, current_player)

    new_game.display_board(game_board.board)
    current_player = player1.switch_player(current_player, player2)
  end
  break if new_game.player_response == 'q'
end

# Class for Board
class Board
  attr_accessor :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def draw?
    @board.all? { |i| i.is_a?(String) }
  end

  def win?
    combinations = [
      [@board[0], @board[1], @board[2]],
      [@board[3], @board[4], @board[5]],
      [@board[6], @board[7], @board[8]],
      [@board[0], @board[3], @board[6]],
      [@board[1], @board[4], @board[7]],
      [@board[2], @board[5], @board[8]],
      [@board[0], @board[4], @board[8]],
      [@board[2], @board[4], @board[6]]
    ]
    combinations.any? do |combo|
      combo.all? { |i| i == 'X' } || combo.all? { |i| i == 'O' }
    end
  end

  def update_board(current_player, position, player1, player2)
    @board[position - 1] = current_player == player1 ? player1.symbol : player2.symbol
  end
end

class Game
  def display_board(board)
    puts ''
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '--- --- ---'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '--- --- ---'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
    puts ''
  end

  def display_title
    puts '
  _______ _        _______           _______
|__   ___ |      |__   __|         |__   __|
    | |   _  ___     | | __ _  ___     | | ___   ___
    | |  | |/ __|    | |/ _` |/ __|    | |/ _ \ / _ \
    | |  | | (__     | | (_| | (__     | | (_) |  __/
    |_|  |_|\___|    |_|\__,_|\___|    |_|\___/ \___|
  '
  end

  def display_instruction
    display_title
    puts "      by the Awesome Dev: Taiwo & John \n\n"
    puts ''
    puts 'It is played on a 3x3 grid.'
    puts 'Players take turns placing their Mark, X or O, on an open square in the grid.'
    puts ''
    puts 'The first player taking 3 grids vertically, horizontally or diagonally will be the winner.'
    puts 'If all 9 squares are filled and neither player can take 3 grids, the game will be draw.'
    puts ''
  end

  def validate_name(name)
    loop do
      break unless name.strip == ''

      print 'Blank can not be used . please enter your name: '
      name = gets.chomp
    end
    name
  end

  def player_name
    puts 'please enter your name player 1:'
    player1 = gets.chomp
    player1 = validate_name(player1)
    puts 'please enter your name player 2'
    player2 = gets.chomp
    player2 = validate_name(player2)
    [player1, player2]
  end

  def validate_position(position, board)
    loop do
      break if (1..9).include?(position) && !board[position - 1].is_a?(String)

      print 'Please enter valid number from 1 to 9: ' unless (1..9).include?(position)
      print "It's already taken. Please choose another position: " if board[position - 1].is_a?(String)
      position = gets.chomp.to_i
    end
    position
  end

  def player_response
    puts "enter any key and press enter to start Tic Tac Toe game, to quit game enter 'q"
    gets.chomp.downcase
  end

  def display_name_symbol(player1, player2)
    puts "#{player1.name} will be using '#{player1.symbol}'"
    puts "#{player2.name} will be using '#{player2.symbol}'"
  end

  def game_status?(game_board, current_player)
    if game_board.win?
      display_board(game_board.board)
      puts 'Congratulations!'
      puts "#{current_player.name} is the winner!"
      puts ''
      return true
    elsif game_board.draw?
      display_board(game_board.board)
      puts ' The game is a tie'
      puts ''
      return true
    end
    false
  end
end

# Ths is Class Playern_string_litera
class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def switch_player(current_player, opponent)
    current_player == self ? opponent : self
  end
end
