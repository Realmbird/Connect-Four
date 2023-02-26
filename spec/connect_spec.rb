require './connect.rb'
describe Connect do
  describe '#initialize' do
    it 'makes Board' do
      connect = Connect.new
      expect(connect.board).to eql([['', '', '', '', '', '', ''], ['', '', '', '', '', '', ''], ['', '', '', '', '', '', ''], ['', '', '', '', '', '', ''], ['', '', '', '', '', '', ''], ['', '', '', '', '', '', '']])
    end
  end
end