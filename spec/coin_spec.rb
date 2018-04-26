require 'Coin'

RSpec.describe Coin do
  it "has a value" do
    coin = Coin.new(0.02)
    expect(coin.value).to eq(0.02)
  end
end
