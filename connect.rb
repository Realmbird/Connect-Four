#encoding: UTF-8
$stdout.set_encoding(Encoding::UTF_8)
class Connect
  attr_accessor :board
  def initialize()
    #6 row seven collumns
    @board = Array.new(6)
    generateBoard()
    @turn = 0
    @toe = false
  end

  def generateBoard()
    emptyBoard = []
    emptyCollumn = ["\u25cb", "\u25cb", "\u25cb", '\u25cb', "\u25cb", "\u25cb", "\u25cb"]
    for i in 0 .. 5 do
      emptyBoard[i] = emptyCollumn
    end 
    @board = emptyBoard
  end

  def print()
    p ['1','2','3','4','5','6', '7']
    @board.each{ |row|
      puts row
    }
  end
  def play 
    print()
    puts "Enter Row Player #{@turn % 2 + 1}"
    row = gets.chomp.to_i
    puts "Enter Column Player #{@turn % 2 + 1}"
    col = gets.chomp.to_i
    if(@turn % 2 == 0)
      @board[row][col] = "x"
    else
      @board[row][col] = "o"
    end
    if (@board.check)
      @toe = @board.check()
      puts "Player #{@turn % 2 + 1} wins"
      @board.clean
    end
      @turn += 1
  end
end
connect = Connect.new
connect.print