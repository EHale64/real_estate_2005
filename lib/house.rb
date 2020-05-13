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

end
