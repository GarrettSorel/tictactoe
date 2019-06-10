class Game

  def initialize
    @board = GameBoard.new
    @player_1 = ""
    @player_2 = ""
    welcome
  end

  def welcome
    puts "------Welcome to Tic Tac Toe------"
    puts "----Please Select X or O to Begin----"
    selection = gets
  end

end

class GameBoard < Game

  def initialize
    @cells = [1,2,3,4,5,6,7,8,9]
  end

end


Game.new

#module GameLogic
#end

#Tic Tac Toe Elements
  #Game Board
  #Module for Game Logic and Rules
  #X's and O's (In a Separate Class?)
