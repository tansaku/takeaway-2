require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'bundler/setup'
require 'twilio-ruby'

# My Twilio credentials
account_sid = 'AC632e1c5c07fe63b8ff585dda3ac085c6'
auth_token = '61f65f83c67a7174daadedd05a9dfcee'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

require './lib/client'
require './lib/dish'
require './lib/menu'
require './lib/order'
require './lib/ui'

menu = Menu.new

dish1 = Dish.new("Tomato Soup", "£1.50")
dish2 = Dish.new("Vegetable Soup", "£2.50")
dish3 = Dish.new("Minestrone Soup", "£3.50")
dish4 = Dish.new("Beef Soup", "£4.50")
dish5 = Dish.new("Chicken Soup", "£5.50")

menu.add(dish1)
menu.add(dish2)
menu.add(dish3)
menu.add(dish4)
menu.add(dish5)

order = Order.new
ui = UI.new

ui.ordering_process(order, menu)
