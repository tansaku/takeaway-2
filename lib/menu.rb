class Menu

  def contents
    @contents ||= []
  end

  def add(dish)
    contents << { name: dish.name, price: dish.price }
  end

end