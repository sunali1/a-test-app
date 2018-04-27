require_relative 'item'
require_relative 'item_stock'

class Machine

include ItemStock

def initialize
  self.initialize_item_stock
end

end
# changed Machine class entirely,
# I found that having a ItemStock module that finds, selects and restocks items would be better separation of concerns and a un-bloated Machine could concentrate on just the vending process. 
