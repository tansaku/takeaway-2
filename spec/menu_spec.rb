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

  it 'can display menu items' do
    dish1 = double :dish, name: "Tomato Soup", price: "£1.50"
    dish2 = double :dish, name: "Chicken Soup", price: "£5.50"
    menu.add(dish1)
    menu.add(dish2)
    expect(menu.display).to eq "1. Tomato Soup @ £1.50 each\n2. Chicken Soup @ £5.50 each\n"
  end
end