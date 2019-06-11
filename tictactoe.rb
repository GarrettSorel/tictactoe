class Game

@@cells = [1,2,3,4,5,6,7,8,9]

  def initialize
    @board = GameBoard.new
    @player_1 = "X"
    @player_2 = "O"
    @current_player = @player_1
    welcome
  end

  def welcome
    puts "-----Welcome to Tic Tac Toe-----"
    puts "-----Player 1 is X and Player 2 is O-----"
    puts "-----Select a number to begin-----"
    puts "-----------------------------------------"
    @board.update
    select
  end

  def turn
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def select
    selection = gets.chomp.to_i

    if @@cells.include?(selection)
      case selection
        when 1
          @@cells[0] = @current_player
          @board.update
          turn
          select
        when 2
          @@cells[1] = @current_player
          @board.update
          turn
          select
        when 3
          @@cells[2] = @current_player
          @board.update
          turn
          select
        when 4
          @@cells[3] = @current_player
          @board.update
          turn
          select
        when 5
          @@cells[4] = @current_player
          @board.update
          turn
          select
        when 6
          @@cells[5] = @current_player
          @board.update
          turn
          select
        when 7
          @@cells[6] = @current_player
          @board.update
          turn
          select
        when 8
          @@cells[7] = @current_player
          @board.update
          turn
          select
        when 9
          @@cells[8] = @current_player
          @board.update
          turn
          select
        else
          puts "Invalid move. Please enter an available number."
          select
        end
    else
      puts "That number is selected, please choose another."
      select
    end
  end

end

class GameBoard < Game

  def initialize
  end

  def update
    puts "#{@@cells[0]} | #{@@cells[1]} | #{@@cells[2]}"
    puts "#{@@cells[3]} | #{@@cells[4]} | #{@@cells[5]}"
    puts "#{@@cells[6]} | #{@@cells[7]} | #{@@cells[8]}"
  end

end


game = Game.new

#module GameLogic
#end

#Tic Tac Toe Elements
  #Game Board
  #Module for Game Logic and Rules
  #X's and O's (In a Separate Class?)
