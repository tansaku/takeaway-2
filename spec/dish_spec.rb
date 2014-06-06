require 'dish'

describe Dish do

  let(:dish) { Dish.new("Tomato Soup", "£1.50") }

  it 'has a name when initialized' do
    expect(dish.name).to eq 'Tomato Soup'
  end

  it 'has a price when initialized' do
    expect(dish.price).to eq '£1.50'
  end

end