require 'client'

describe Client do

  let(:client) { Client.new("John Smith", "+447789223025") }

  it 'has a name when initialized' do
    expect(client.name).to eq 'John Smith'
  end

  it 'has a phone number when initialized' do
    expect(client.phone_number). to eq '+447789223025'
  end

end