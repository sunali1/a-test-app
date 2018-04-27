module CoinStock

  attr_reader :value, :stocked_coins

  def initialize_coin_stock
    @stocked_coins = {
                      200 => 0,
                      100 => 0,
                      50 => 0,
                      20 => 0,
                      10 => 0,
                      5 => 0,
                      2 => 0,
                      1 => 0
                    }
  end

  def value
    value = 0
    @stocked_coins.each{|denomination, quantity| value += (denomination * quantity)}
    return value
  end

  def restock_coins(denomination, quantity)
    @stocked_coins[denomination] += quantity
  end

end
