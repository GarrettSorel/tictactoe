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
    puts "Type reset to start a new game or quit to exit"
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

    puts "#{@current_player}'s Turn \n"
    selection = gets.chomp

    if @@cells.all?(String)
      puts "The game is tie!"
      @board.reset
    end

    if selection == "reset"
      @board.reset
    end

    if selection == "quit"
      @board.exit
    end

    if @@cells.include?(selection)
      case selection
        when 1
          @@cells[0] = @current_player
          @board.update
          turn
          select unless victory?
        when 2
          @@cells[1] = @current_player
          @board.update
          turn
          select unless victory?
        when 3
          @@cells[2] = @current_player
          @board.update
          turn
          select unless victory?
        when 4
          @@cells[3] = @current_player
          @board.update
          turn
          select unless victory?
        when 5
          @@cells[4] = @current_player
          @board.update
          turn
          select unless victory?
        when 6
          @@cells[5] = @current_player
          @board.update
          turn
          select unless victory?
        when 7
          @@cells[6] = @current_player
          @board.update
          turn
          select unless victory?
        when 8
          @@cells[7] = @current_player
          @board.update
          turn
          select unless victory?
        when 9
          @@cells[8] = @current_player
          @board.update
          turn
          select unless victory?
        else
          puts "Invalid move. Please enter an available number."
          select
        end
    elsif selection == "reset"
      @board.reset
    elsif selection == "quit"
      @board.exit
    else
      puts "That number is selected, please choose another."
      select
    end
  end

  def victory?
    if (@@cells[0] == "X" && @@cells[1] == "X" && @@cells[2] == "X") ||
       (@@cells[2] == "X" && @@cells[3] == "X" && @@cells[4] == "X") ||
       (@@cells[6] == "X" && @@cells[7] == "X" && @@cells[8] == "X") ||
       (@@cells[0] == "X" && @@cells[3] == "X" && @@cells[6] == "X") ||
       (@@cells[1] == "X" && @@cells[4] == "X" && @@cells[7] == "X") ||
       (@@cells[2] == "X" && @@cells[5] == "X" && @@cells[8] == "X") ||
       (@@cells[0] == "X" && @@cells[4] == "X" && @@cells[8] == "X") ||
       (@@cells[2] == "X" && @@cells[4] == "X" && @@cells[6] == "X")
         puts "X Wins!"
         @board.reset
    elsif (@@cells[0] == "O" && @@cells[1] == "O" && @@cells[2] == "O") ||
       (@@cells[2] == "O" && @@cells[3] == "O" && @@cells[4] == "O") ||
       (@@cells[6] == "O" && @@cells[7] == "O" && @@cells[8] == "O") ||
       (@@cells[0] == "O" && @@cells[3] == "O" && @@cells[6] == "O") ||
       (@@cells[1] == "O" && @@cells[4] == "O" && @@cells[7] == "O") ||
       (@@cells[2] == "O" && @@cells[5] == "O" && @@cells[8] == "O") ||
       (@@cells[0] == "O" && @@cells[4] == "O" && @@cells[8] == "O") ||
       (@@cells[2] == "O" && @@cells[4] == "O" && @@cells[6] == "O")
         puts "O Wins!"
         @board.reset
    else
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

  def reset
    @@cells = [1,2,3,4,5,6,7,8,9]
    update
  end

  def exit
    abort
  end

end


game = Game.new

#module GameLogic
#end

#Tic Tac Toe Elements
  #Game Board
  #Module for Game Logic and Rules
  #X's and O's (In a Separate Class?)
