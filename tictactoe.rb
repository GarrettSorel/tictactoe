class Game

  def initialize
    @board = GameBoard.new
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
  end

end


Game.new

#module GameLogic
#end

#Tic Tac Toe Elements
  #Game Board
  #Module for Game Logic and Rules
  #X's and O's (In a Separate Class?)
