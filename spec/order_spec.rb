require 'order'

describe Order do

  let(:order) { Order.new }

  it 'can create an array' do
    expect(order.contents).to eq []
  end

  it 'can add to the array' do
    dish = double :dish, name: "Tomato Soup", price: "£1.50"
    quantity = 2
    order.add(dish, quantity)
    expect(order.contents).to eq [{name: "Tomato Soup", price: "£1.50", quantity: 2}]
  end

  it 'can display items ordered so far' do
    dish1 = double :dish, name: "Tomato Soup", price: "£1.50"
    dish2 = double :dish, name: "Chicken Soup", price: "£5.50"
    quantity1 = 2
    quantity2 = 2
    order.add(dish1, quantity1)
    order.add(dish2, quantity2)
    expect(order.display).to eq "1. 2x Tomato Soup @ £1.50 each\n2. 2x Chicken Soup @ £5.50 each\n"
  end

  it 'can calculate the total price' do
    dish1 = double :dish, name: "Tomato Soup", price: "£1.50"
    dish2 = double :dish, name: "Chicken Soup", price: "£5.50"
    quantity1 = 2
    quantity2 = 2
    order.add(dish1, quantity1)
    order.add(dish2, quantity2)
    order.add_to_cost_array
    expect(order.total_cost).to eq "£14.00"
  end
end