require 'ui'

describe UI do

  let(:ui) { UI.new }
  let(:menu) { Menu.new }

  it 'displays an introductory message' do
    expect(ui.header).to eq "********* JULIA'S SOUP FACTORY **********\n\n"
  end

  it 'should raise an error if user inputs total cost wrongly' do
    allow(ui).to receive(:input) { "£1.00" }
    order = double :order, total_cost: "£8.00"
    expect{ui.client_confirms_cost_of(order)}.to raise_error RuntimeError

    # check with instructors how to remove > from rspec test
  end

  xit 'should be told to send an sms when total cost is confirmed' do
    ui.get_client_details
    stub!(:input).and_return("Julia")
    stub!(:input).and_return("+447789223025")
    expect(ui.get_client_details).to receive(:send_sms) #eq "Message has now been sent to #{user.name}!"
  end

  xit 'should initialise a new Client object if total cost is confirmed' do
    ui.get_client_details
    expect(client.class).to eq Client
    
    # check with instructors how to implement
  end

  xit 'should get clients name and phone number if total cost is confirmed' do
    ui.get_client_details
    stub!(:input).and_return("Julia")
    expect(client.name).to eq "Julia"

    # check with instructors how to implement
  end

end