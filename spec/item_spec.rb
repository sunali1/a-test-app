require 'item'

RSpec.describe Item do
  it "knows its price" do
    item = Item.new('Tropicana', 2)
    expect(item.price).to eq(2)
  end

  it "knows its name" do
    item = Item.new('Tropicana', 2)
    expect(item.name).to eq('Tropicana')
  end
end
