require_relative '../lib/Board'
describe Board do
  
  describe '#add' do
    it "adds to lowest column" do
      board = Board.new
      board.add(0,"\u26AA")
      expect(board.board[0,5] == "\u26AA")
    end
    it "only one row" do
      board = Board.new
      board.add(0,"\u26AA")
      expect(board.board[0,4] != "\u26AA")
    end
  end
  describe '#checkCol' do
    it 'does not give false value' do
      board = Board.new
      board.checkCol
      expect(board.win).to eql(false)
    end
  end
  describe '#checkRow' do
    it 'does not give false value' do
      board = Board.new
      board.checkRow
      expect(board.win).to eql(false)
    end
  end
  describe '#checkRight' do
    it 'does not give false value' do
      board = Board.new
      board.checkRight
      expect(board.win).to eql(false)
    end
  end
  describe '#checkLeft' do
    it 'does not give false value' do
      board = Board.new
      board.checkLeft
      expect(board.win).to eql(false)
    end
  end
end
