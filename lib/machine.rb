require_relative 'item'
require_relative 'item_stock'

class Machine

include ItemStock
include CoinStock

def initialize
  self.initialize_item_stock
  self.initialize_coin_stock
end

def load_items(item, quantity)
  restock(item, quantity)
end

end
# changed Machine class entirely,
# I found that having a ItemStock module that finds, selects and restocks items would be better separation of concerns and a un-bloated Machine could concentrate on just the vending process.
