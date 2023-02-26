require_relative '../lib/connect'
describe Connect do
  describe '#game' do
    it "resets board when win" do
      connect = Connect.new
      connect.connect_board.board = []
      connect.connect_board.win = true
      connect.game()
      defaultBoard = Array.new(6) { Array.new(7, "\u25cb") }
      expect(connect.connect_board.board == defaultBoard)
    end
  end
end
