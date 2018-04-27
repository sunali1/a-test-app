require 'item_stock'

RSpec.describe ItemStock do

  class TestItemStock
  end

  it "finds index of item chosen by the client from stocked_item array" do
    test_item_stock = TestItemStock.new
    test_item_stock.extend(ItemStock)
    test_item_stock.initialize_item_stock
    expect(test_item_stock.find("water")).to eq(3)
  end

  it "selects and vends the item chosen by the client " do
    test_item_stock = TestItemStock.new
    test_item_stock.extend(ItemStock)
    test_item_stock.initialize_item_stock
    expect(test_item_stock.select("tropicana")).to eq("tropicana")
  end
end
