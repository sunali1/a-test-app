require 'Machine'


RSpec.describe Machine do

  let (:machine) {Machine.new}
  let(:item) {Item.new("peanuts", 100)}

  it "initializes with fixed capacity of items" do
    expect(machine.load).to eq(80)
  end

  it "initializes with fixed amount of items" do
    expect(machine.load).to eq(80)
  end

  it "machine vends the correct item" do
    used_machine = Machine.new(80, 40)
    used_machine.vend("peanuts", 2, 200)
    expect(item.name).to eq("peanuts")
  end

end
