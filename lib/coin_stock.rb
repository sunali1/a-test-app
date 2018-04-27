module CoinStock

  attr_reader :value, :stocked_coins

  def initialize_coin_stock
    @stocked_coins = {
                      200 => 10,
                      100 => 10,
                      50 => 10,
                      20 => 10,
                      10 => 10,
                      5 => 10,
                      2 => 10,
                      1 => 10
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

  def calculate_change_required(money_paid, item_cost)
    @change_required = money_paid - item_cost
  end

# Test for make_change not passing
  def make_change(amount, coins)
    amount = @change_required
    coins = @stocked_coins.keys
    coins.sort.
          reverse.
          map{|coin| f = amount/coin; amount %= coin; Array.new(f){coin} }.
          flatten
  end
end
