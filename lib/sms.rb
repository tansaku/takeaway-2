require 'rubygems'
require 'twilio-ruby'
require 'bundler/setup'

module SMS

  def send_sms(user, time)

    # My Twilio credentials
    account_sid = 'AC632e1c5c07fe63b8ff585dda3ac085c6'
    auth_token = '61f65f83c67a7174daadedd05a9dfcee'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token
     
    from = "+441275595079" # Your Twilio number

    @client.account.messages.create(
      :from => from,
      :to => user.phone_number,
      :body => "Thank you! Your order was placed and will be delivered before #{ (time + ( 1*60*60 )).strftime("%H:%M:%S") }"
      )
    puts "Message has now been sent to #{user.name}!"
  end 

  # friends = {
  # "+14153334444" => "Curious George",
  # "+14155557775" => "Boots",
  # "+14155551234" => "Virgil"
  # }
  # friends.each do |key, value|
  #   client.account.messages.create(
  #     :from => from,
  #     :to => key,
  #     :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
  #   ) 
  #   puts "Sent message to #{value}"
  # end

end