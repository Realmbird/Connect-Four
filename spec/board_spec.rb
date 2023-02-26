require_relative '../lib/Board'
describe Board do
  describe '#set' do
  end
  describe '#add' do
  end
  describe '#checkCol' do
    it 'does not give false value' do
      board = Board.new
      expect(board.checkCol).to eql(false)
    end
  end
  describe '#checkRow' do
    it 'does not give false value' do
      board = Board.new
      expect(board.checkRow).to eql(false)
    end
  end
  describe '#checkRight' do
    it 'does not give false value' do
      board = Board.new
      expect(board.checkRight).to eql(false)
    end
  end
  describe '#checkLeft' do
    it 'does not give false value' do
      board = Board.new
      expect(board.checkLeft).to eql(false)
    end
  end
end
