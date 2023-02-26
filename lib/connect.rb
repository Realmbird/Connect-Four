require_relative './Board'
require_relative './assests'
class Connect
  include Asset
  attr_accessor :connect_board
  def initialize
    @connect_board = Board.new
    @turn = 0
  end

  def game
    play while !@connect_board.win
    @connect_board.reset
  end

  def play
    # print board
    @connect_board.printBoard

    puts "Enter Column Player #{@turn % 2 + 1}"
    col = gets.chomp.to_i
    tcol = col - 1
    if @turn.even?
      @connect_board.set(tcol, white)
    else
      @connect_board.set(tcol, black)
    end
    # done the person win
    puts "Player #{@turn % 2 + 1} wins" if @connect_board.checkWin
    @turn += 1
  end
end
