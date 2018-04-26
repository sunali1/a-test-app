require 'Coin'

RSpec.describe Coin do
  it "has a value" do
    coin = Coin.new(0.02)
    expect(coin.value).to eq(0.02)
  end

  it "can only have values of 1p, 2p, 5p, 10p, 20p, 50p, £1, £2" do
    expect{Coin.new(0.03)}.to raise_error("Only 1p, 2p, 5p, 10p, 20p, 50p, £1, £2 accepeted")
  end
end
