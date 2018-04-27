module ItemStock

 attr_accessor :stocked_items, :selection

  def initialize_item_stock
    @stocked_items = [
                ["apple", 0, 50],
                ["tropicana", 0, 200],
                ["peanuts", 0, 100],
                ["water", 0, 150]
              ]
  end
  def find(item)
    @stocked_items.find_index{|x| x[0] == item}
  end

  def select(item)
    @selection = item
      raise "Item out of stock" unless @stocked_items[find(item)][1] > 0
    @stocked_items[find(item)][1] -= 1
    return @stocked_items[find(item)][0]
  end

  def restock(item, quantity)
    @stocked_items[find(item)][1] += quantity
  end

# In the real world the vending machine would have a fixed load and hence can only be restocked by a limited quantity

end
