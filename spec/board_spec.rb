require 'board'

describe Board  do

  let(:board)           { Board.new }
  let(:water)           { double :water }
  let(:cell_with_water) { double :cell, content: water }
  let(:ship)            { double :ship, length: 2 }
  let(:cell_with_ship)  { double :cell, content: ship }
  let(:cell_hit)        { double :cell, :hit? => true }
  let(:cell_no_hit)     { double :cell, :hit? => false }

  def initialize_grid
    board.columns
    board.rows
    board.set_coordinates
  end

  before do
    initialize_grid
  end

  context 'coords...' do

    it 'has a grid of 100 cells' do
      board.fill_with_water
      expect(board.grid.size).to be(100)
    end

    it 'should have coordinates' do
      expect(board.grid[:A1]).to be_an_instance_of(Cell)
    end

    it 'knows which one will be the next horizontal coordinate' do
      orientation = 'horizontal'
      coord = 'A1'
      expect(board.next_coord(coord, orientation)).to eq('A2')
    end

    it 'knows which one will be the next vertical coordinate' do
      orientation = 'vertical'
      coord = 'A1'
      expect(board.next_coord(coord, orientation)).to eq('B1')
    end

  end

  context 'placing ships' do

    it 'can place the ship horizontally' do
      orientation = 'horizontal'
      expect(board.place(ship, 'A1', orientation)).to eq(["A1", "A2"])
    end

    it 'can place the ship vertically' do
      orientation = 'vertical'
      expect(board.place(ship, 'B1', orientation)).to eq(["B1", "C1"])
    end

  end  

end