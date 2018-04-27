module ItemStock

 attr_accessor :stocked_items, :selection

  def initialize_item_stock
    @stocked_items = [
                ["apple", 2, 50],
                ["tropicana", 2, 200],
                ["peanuts", 2, 100],
                ["water", 2, 150]
              ]
  end
  def find(item)
    @stocked_items.find_index{|x| x[0] == item}
  end

  def select(item)
    @selection = item
    p @stocked_items[find(item)][1]
      raise "Item out of stock" unless @stocked_items[find(item)][1] > 0
    @stocked_items[find(item)][1] -= 1
    return @stocked_items[find(item)][0]
  end
# # In the real world the vending machine would have a fixed stock to start with
#   def restock(item, quantity)
#
#   end
end
