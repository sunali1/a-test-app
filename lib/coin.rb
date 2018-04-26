class Coin

VALUES_ACCEPTED = [1, 2, 5, 10, 20, 50, 100, 200]

  attr_reader :value

  def initialize(value)
    raise TypeError, 'Only 1p, 2p, 5p, 10p, 20p, 50p, £1, £2 accepeted' unless VALUES_ACCEPTED.include?(value)
    @value = value
  end
end
