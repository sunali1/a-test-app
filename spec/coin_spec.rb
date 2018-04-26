require 'Coin'

RSpec.describe Coin do
  it "has a value" do
    coin = Coin.new(2)
    expect(coin.value).to eq(2)
  end

  it "can only have values of 1p, 2p, 5p, 10p, 20p, 50p, £1, £2" do
    expect{Coin.new(3)}.to raise_error("Only 1p, 2p, 5p, 10p, 20p, 50p, £1, £2 accepeted")
  end

  it "has a value of 1p" do
    coin = Coin.new(1)
    expect(coin.value).to eq(1)
  end

  it "has a value of 2p" do
    coin = Coin.new(2)
    expect(coin.value).to eq(2)
  end

  it "has a value of 5p" do
    coin = Coin.new(5)
    expect(coin.value).to eq(5)
  end
  it "has a value of 10p" do
    coin = Coin.new(10)
    expect(coin.value).to eq(10)
  end
  it "has a value of 20p" do
    coin = Coin.new(20)
    expect(coin.value).to eq(20)
  end
  it "has a value of £50" do
    coin = Coin.new(50)
    expect(coin.value).to eq(50)
  end
  it "has a value of £1" do
    coin = Coin.new(100)
    expect(coin.value).to eq(100)
  end
  it "has a value of £2" do
    coin = Coin.new(200)
    expect(coin.value).to eq(200)
  end
end
