class House
  attr_reader :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    digits = @price.delete"$"
    digits.to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    price > 500000
  end

  def rooms_from_category(category)
    @rooms.find_all { |room| room.category == category }
  end

  def area
    @rooms.sum { |room| room.area }
  end

  def details
    details = Hash.new
    details["price"] = price
    details["address"] = @address
    details
  end

  def price_per_square_foot
    (price / area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort { |room| room.area}
  end
end
