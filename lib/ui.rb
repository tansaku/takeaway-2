class UI

  def input
    gets.chomp
  end

  def prompt
    ">  "
  end

  def header
    "********* JULIA'S AWESOME DINER *********\n\n"
  end

  def footer
    "\n************** End of menu **************\n\n"
  end

  def choice_instruction
    "Please key in the name of the dish you would like"
  end

  def quantity_instruction
    "\nHow many would you like?"
  end

  def anything_else_instruction
    "\nKey in your next choice, otherwise enter 'checkout'."
  end

  def proceed_instruction
    "\nGreat, let's proceed to the checkout!"
  end


  def ordering_process(order, menu)
    puts header
    puts menu.display
    puts footer
    puts choice_instruction
    
    client_adds_to(order, menu) # this is a loop

    puts proceed_instruction
    checkout_process(order)
  end

  def client_adds_to(order, menu)
    loop do
      print prompt
      
      dish_name = input
      break if dish_name == 'checkout'

      puts quantity_instruction
      print prompt
      quantity = input.to_i

      selected_dish = menu.contents.select do |dish|
        dish[:name] == dish_name
      end

      order.add(selected_dish[0][:dish], quantity)

      puts anything_else_instruction
    end
  end

  def checkout_process(order)
    puts confirm_choices_instruction
    puts order.display

    order.add_to_cost_array

    puts confirm_total_cost_instruction
    client_confirms_cost_of(order) # this is a loop
  end

  def client_confirms_cost_of(order)
    loop do
      print prompt
      user_thinks_cost_is = input
      
      if user_thinks_cost_is == order.total_cost
        puts confirm_order_instruction #SMS!!
        return
      else
        begin
          raise RuntimeError
        rescue
          puts decline_order_instruction
          redo
        end
      end
    end
  end

  def confirm_choices_instruction
    "\nHere is what you have ordered:"
  end

  def confirm_total_cost_instruction
    "\nPlease confirm the total cost you expect to pay e.g. £5.00"
  end

  def confirm_order_instruction
    "\nThank you! Your order has been confirmed!"
  end

  def decline_order_instruction
    "\nThat is not the correct amount, please check your calculation again."
  end

end