require 'player'

describe Player do

  let (:player) { Player.new }
  let (:board) { double :board }

  before do
    player.board = board
  end

  it 'should know if it has a board' do
    expect(player.board).to be(board)
  end

  it 'should shoot at the board' do
    expect(board).to receive(:shoot).with(:A1)
    player.receive_shot(:A1)
  end

end
