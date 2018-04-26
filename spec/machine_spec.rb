require 'Machine'

RSpec.describe Machine do

  let (:machine) {Machine.new}

  it "initializes with fixed capacity of items" do
    expect(machine.fixed_load).to eq(80)
  end

  it "initializes with fixed amount of items" do
    expect(machine.fixed_load).to eq(80)
  end
end
