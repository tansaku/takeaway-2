class Order

  def contents
    @contents ||= []
  end

  def add(dish)
    contents << { name: dish.name, price: dish.price }
  end

  def display
    contents.map.with_index do |ordered_dish|
      "#{ordered_dish[:name]}, #{ordered_dish[:price]}\n"
    end.join
  end

end