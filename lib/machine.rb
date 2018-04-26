class Machine

attr_reader :fixed_capacity, :fixed_load

  def initialize(fixed_capacity=80, fixed_load=80)
    @fixed_capacity = fixed_capacity
    @fixed_load = fixed_load
  end
end
