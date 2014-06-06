require 'menu'

describe Menu do

  let(:menu) { Menu.new }

  it 'can create an array' do
    expect(menu.contents).to eq []
  end

  it 'can add dishes' do
    dish = double :dish, name: "Tomato Soup", price: "£1.50"
    menu.add(dish)
    expect(menu.contents).to eq [{name: "Tomato Soup", price: "£1.50"}]
  end
end