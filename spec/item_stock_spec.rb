require 'item_stock'

RSpec.describe ItemStock do

  class TestItemStock
  end

  before(:each) do
    @test_item_stock = TestItemStock.new
    @test_item_stock.extend(ItemStock)
    @test_item_stock.initialize_item_stock
  end

    it "finds index of item chosen by the client from stocked_item array" do

      expect(@test_item_stock.find("water")).to eq(3)
    end

    it "selects and vends the item chosen by the client " do
      @test_item_stock.restock("tropicana", 10)
      expect(@test_item_stock.select("tropicana")).to eq("tropicana")
    end

  context "when used " do

    before(:each) do
      @test_item_stock.restock("apple", 10)
    end

    it "can restock item" do
      @test_item_stock.restock("apple", 5)
      expect(@test_item_stock.stocked_items[0][1]).to be 15
    end

    it "keeps track of item quantity" do
      @test_item_stock.select("apple")
      expect(@test_item_stock.stocked_items[0][1]).to eq 9
    end
  end
end
