require 'item_stock'

RSpec.describe ItemStock do

  class TestItemStock
  end

  it "finds an item chosen from the stocked items" do
    test_item_stock = TestItemStock.new
    test_item_stock.extend(ItemStock)
    test_item_stock.initialize_item_stock
    expect(test_item_stock.select("peanuts")).to eq("peanuts")
  end
end
