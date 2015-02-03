class Board 

  attr_accessor :grid, :coords, :content
  attr_reader :letters, :numbers

  def initialize
    @grid = {}
    @coords = []
    rows
    columns
    fill_with_water
  end

  def columns
    @letters = [*'A'..'J']
  end

  def rows
    @numbers = [*1..10]
  end

  def set_coordinates
    @letters.each do |letter|
      create_coords(letter)
    end
  end


  def fill_with_water
    set_coordinates
    @coords.each{ |coord| @grid[coord.to_sym] = Cell.new(Water.new)}
  end

  def next_coord(coord, orientation)
    if orientation == 'horizontal'
      coord.next
    elsif orientation == 'vertical'
      coord.reverse.next.reverse
    end
  end

  def place(ship, coord, orientation)
    coords = prepare_coords(ship, coord, orientation)
    coords.each { |coord| @grid[coord.to_sym].content = ship  }
  end

  def prepare_coords(ship, coord, orientation)
    coords = [coord]
    ship.length.times { coords << next_coord(coords.last, orientation) }
    coords.pop
    coords
  end

  def ships
    @grid.values.select { |cell| cell.content.is_a?(Ship) }.map(&:content).uniq
  end

  def ship_count
    ships.count
  end

  def floating_ships?
    !ships.any?(&:sunk?)
  end

  def already_hit(coord)
    raise "You cannot hit the same square twice" if  grid[coord.to_s].hit?
  end

  def shoot(coord)
    if !already_hit(coord) then grid[coord.to_sym] = hit! end
  end

  private

  def create_coords(letter)
    @numbers.map { |number| @coords << letter + number.to_s }
  end

end