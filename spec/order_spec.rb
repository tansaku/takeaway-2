require 'order'

describe Order do

  let(:order) { Order.new }

  it 'can create an array' do
    expect(order.contents).to eq []
  end

  it 'can add to the array' do
    dish = double :dish, name: "Tomato Soup", price: "£1.50"
    order.add(dish)
    expect(order.contents).to eq [{name: "Tomato Soup", price: "£1.50"}]
  end

  it 'can display items ordered so far' do
    dish1 = double :dish, name: "Tomato Soup", price: "£1.50"
    dish2 = double :dish, name: "Chicken Soup", price: "£5.50"
    order.add(dish1)
    order.add(dish2)
    expect(order.display).to eq "Tomato Soup, £1.50\nChicken Soup, £5.50\n"
  end

  it 'can calculate the total price' do
    dish1 = double :dish, name: "Tomato Soup", price: "£1.50"
    dish2 = double :dish, name: "Chicken Soup", price: "£5.50"
    order.add(dish1)
    order.add(dish2)
    order.add_to_cost_array
    expect(order.total_cost).to eq "£7.00"
  end
end