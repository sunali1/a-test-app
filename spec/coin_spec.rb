require 'Coin'

RSpec.describe Coin do
  it "has a value" do
    coin = Coin.new(0.02)
    expect(coin.value).to eq(0.02)
  end

  it "can only have values of 1p, 2p, 5p, 10p, 20p, 50p, £1, £2" do
    expect{Coin.new(0.03)}.to raise_error("Only 1p, 2p, 5p, 10p, 20p, 50p, £1, £2 accepeted")
  end

  it "has a value of 1p" do
    coin = Coin.new(0.01)
    expect(coin.value).to eq(0.01)
  end

  it "has a value of 2p" do
    coin = Coin.new(0.02)
    expect(coin.value).to eq(0.02)
  end

  it "has a value of 5p" do
    coin = Coin.new(0.05)
    expect(coin.value).to eq(0.05)
  end
  it "has a value of 10p" do
    coin = Coin.new(0.10)
    expect(coin.value).to eq(0.10)
  end
  it "has a value of 20p" do
    coin = Coin.new(0.20)
    expect(coin.value).to eq(0.20)
  end
  it "has a value of £50" do
    coin = Coin.new(0.50)
    expect(coin.value).to eq(0.50)
  end
  it "has a value of £1" do
    coin = Coin.new(1.00)
    expect(coin.value).to eq(1.00)
  end
  it "has a value of £2" do
    coin = Coin.new(2.00)
    expect(coin.value).to eq(2.00)
  end
end
