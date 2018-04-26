class Item

attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.apple
    new("apple", 0.50)
  end
  def self.tropicana
    new("tropicana", 2.00)
  end
  def self.peanuts
    new("peanuts", 1.00)
  end
  def self.water
    new("water", 1.50)
  end
end
