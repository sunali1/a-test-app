class Coin

VALUES_ACCEPTED = [0.01, 0.02, 0.05, 0.10, 0.20, 0.50, 1.00, 2.00]

  attr_reader :value

  def initialize(value)
    raise TypeError, 'Only 1p, 2p, 5p, 10p, 20p, 50p, £1, £2 accepeted' unless VALUES_ACCEPTED.include?(value)
    @value = value
  end
end
