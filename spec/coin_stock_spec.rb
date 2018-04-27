require 'coin_stock'

RSpec.describe CoinStock do

  class TestCoinStock
  end

  before(:each) do
    @test_coin_stock = TestCoinStock.new
    @test_coin_stock.extend(CoinStock)
    @test_coin_stock.initialize_coin_stock
  end

  it "stocks coins" do
    @test_coin_stock.restock_coins(200, 10)
    expect(@test_coin_stock.value).to eq 2000
  end

end
