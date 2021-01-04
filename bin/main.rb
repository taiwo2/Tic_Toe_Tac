#!/usr/bin/env ruby
puts 'Hello World'

TIC-TAC-TOE

Tic-tac-toe is a fun game that you can play any time 
and anywhere as long as you have a piece of paper, a pencil,
and an opponent. Tic-tac-toe is a zero sum game, which means that
if both players are playing their best, that neither player will win.
However, if you learn how to play tic-tac-toe and master some simple
strategies, then you will be able to not only play, but to win the majority of
the time. 
If you want to know how to play tic-tac-toe, then see Step 1 to get started.
     
# Step One
Draw the board. First, you have to draw the board, which is 
made up of a 3 x 3 grid of squares. This means it has three rows of
three squares. Some people play with a 4 x 4 grid, but that is for more advanced 
players, and we will focus on the 3 x 3 grid here.

# Step Two
Have the first player go first. Though traditionally, the
first player goes with "X", you can allow the first player to 
decide whether he wants to go with "X"s or "O"s. These symbols will be
placed on the table, in the attempt to have three of them in a row. 
If you are going first, then the best move you can make is to move into 
the center. This will maximize your chances of winning, since you will 
be able to create a row of three "X"s or "O"s in more combinations (4) this 
 first player goes with "X", you can allow the first player to 
 decide whether he wants to go with "X"s or 'O's. These symbols will be
  placed on the table, in the attempt to have three of them in a row. 
  If you are going first, then the best move you can make is to move into 
  the center. This will maximize your chances of winning, since you will 
  be able to create a row of three "X"s or "O"s in more combinations (4) this 
way than if you chose a different square.

# Step Three
Have the second player go second. After the first player goes, 
then the second player should put down his symbol, which will be 
different from the symbol of the first player. The second player can
either try to block the first player from creating a row of three, 
or focus on creating his or her own row of three.
Ideally, the player can do both.

 # Step Four
Keep alternating moves until one of the players has 
drawn a row of three symbols or until no one can win. 
The first player to draw three of his or her symbols in a row,
whether it is horizontal, vertical, or diagonal, has won tic-tac-toe.
will be declare  and prompted as
   # puts 'you win on the board'
otherwise
puts  'you lose on the board for other player'
However, if both players are playing with optimal strategy, then there is a good 
chance that no one will win because you will have blocked one another opportunities to create a row of three
   # puts 'Draw'

 #Step Five
 Keep practicing. Contrary to popular belief, tic-tac-toe is not purely a game of chance.
There are some strategies that can help you optimize your skills and to become an expert 
tic-tac-toe player. If you keep playing, you will soon learn all of the tricks to making 
sure you win every time -- or, at least, you will learn the tricks to make sure you 
never lose. Its like 0's and x's.
 step6
 Keep practicing. Contrary to popular belief, tic-tac-toe is not purely a game of chance.
  There are some strategies that can help you optimize your skills and to become an expert 
  tic-tac-toe player. If you keep playing, you will soon learn all of the tricks to making 
  sure you win every time -- or, at least, you will learn the tricks to make sure you 
 never lose. Its like 0's and x's.

 
 Directory structure
We'll be building 3 classes to construct our basic game.
 Begin by creating a tic_tac_toe_v1 
directory with the following structure:

Board
The Board class is responsible for adding a player's marks, checking for winners, and 
printing the game board. A board instance must have an attribute to represent the grid. 
For simplicity, give the grid the dimensions of classic tic-tac-toe, 3x3.

Board#initialize
A Board instance must have an instance variable to represent the game grid. For now, 
Board#initialize does not need to accept any arguments. Initialize the grid so 
that all positions are empty; this means that every position 
should contain an underscore (1..9).

Board#win?(mark)
This method should return a boolean indicating whether or not the
 given mark has filled any full row, column, or diagonal.

 main.rb
The Game class will be the main class that houses the instances of Board and Player
 required for gameplay. 
It will be responsible for passing data between the board and players. 
It will also serve to contain the main game loop.

Be sure to require your board.rb and player.rb files into game.rb.

Game#initialize
An instance of Game should have instance variables for player one, player two,
 and the board. Design the
 #initialize method to accept the mark values to be used for the players.

You should also initialize an instance variable to contain the current player. 
By default, player one should begin as the current 

 Game#play
This method will contain the main game loop. Here is some psuedocode for the loop:
    
while there exists empty positions on the board
 print the board
    get a position from the current player
    place their mark at that position of the board
    check if that user has won
    if they win, print out a 'victory' message saying who won and return to end the game
    otherwise they did not win, so switch turns
    if we finish the while loop without returning, that means there are no more empty positions on the board and
     none has won, so print a 'draw' message
    Test your game in pry. Play a few games by creating an instance of Game and invoking #play on it. 
    After a game is over, be sure to create a new instance of Game to play again,
     this is the only way to get a fresh board. Some scenarios to test are: player one winning, 
     
     player two winning, and a draw.
    
    If any errors are raised during gameplay, your game loop and #play method will end immediately, so you'll have to start a new game and retry!
