require_relative './assests'
class Board
  include Asset

  attr_accessor :board, :win

  def initialize
    @board = Array.new(6)
    generateBoard
    @win = false
  end

  def generateBoard
    emptyBoard = []
    emptyCollumn = Array.new(7, blank)
    for i in 0..5 do
      emptyBoard[i] = emptyCollumn
    end
    @board = emptyBoard
  end

  def printBoard
    p %w[1 2 3 4 5 6 7]
    @board.each  do |row|
      p row
    end
  end

  def set(col, value)
    unless add(col, value)
      puts 'Invalid input try again'
      puts "Enter Col Player #{value}"
      ncol = gets.chomp.to_i
      set(ncol, value)
    end
  end

  def add(col, value, row = 5)
    if @board[row][col] == blank
      @board[row][col] = value
      true
    else
      return false if @board[row - 1][col] != ni

      add(col, value, row - 1)
    end
  end

  def checkWin
    checkCol
    checkRow
    checkDiagonal
    @win
  end

  def checkCol
    for i in 0..6 do

      columns = []

      @board.each  do |row|
        columns[i] = row[i]
      end

      columns.each_cons(4) do |colGroup|
        @win = true if colGroup[0] != blank && colGroup.uniq.length == 1
      end

    end
  end

  def checkRow
    @board.each do |row|
      row.each_cons(4) do |rowGroup|
        @win = true if rowGroup[0] != blank && rowGroup.uniq.length == 1
      end
    end
  end

  def checkDiagonal
    checkRight
    checkLeft
  end

  def checkRight
    3.times do |row|
      4.times do |col|
        group = [@board[row][col], @board[row + 1][col + 1], @board[row + 2][col + 2], @board[row + 3][col + 3]]
        @win = true if group[0] != blank && group.uniq.length == 1
      end
    end
  end

  def checkLeft
    3.times do |row|
      (3..6).each do |col|
        group = [@board[row][col], @board[row - 1][col - 1], @board[row - 2][col - 2], @board[row - 3][col - 3]]
        @win = true if group[0] != blank && group.uniq.length == 1
      end
    end
  end

  def reset
    generateBoard
    @win = false
  end
end