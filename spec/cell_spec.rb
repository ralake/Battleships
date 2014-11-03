require './lib/cell'

describe Cell do

  let (:cell) { Cell.new }
  let (:ship) { double :ship }

  it 'will initialize without a ship' do
    expect(cell.empty).to be true
  end

  it 'can hold a ship' do
    cell.hold(ship)
    expect(cell.empty).to be false
  end

  it 'knows which ship it is holding' do
    cell.hold(ship)
    expect(cell.ship).to be(ship)
  end

  xit 'can be hit' do
    cell.hit!
    expect(cell.hit).to be true
  end
  
end