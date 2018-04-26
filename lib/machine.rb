require_relative 'Item'

class Machine

attr_reader :capacity, :load, :items

  def initialize(capacity=80, load=80)
    @capacity = capacity
    @load = load
    @items = {
      "apple" => 50,
      "tropicana" => 200,
      "peanuts" => 100,
      "water" => 150
    }
  end

  def vend(choice, quantity, paid)
    item_vended = @items[choice]
    print item_vended

  end

end
