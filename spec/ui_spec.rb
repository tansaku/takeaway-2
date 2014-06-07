require 'ui'

describe UI do

  let(:ui) { UI.new }
  let(:menu) { Menu.new }
  
  it 'displays an introductory message' do
    expect(ui.header).to eq "********* JULIA'S AWESOME DINER *********\n\n"
  end

  # it 'can display the menu' do
  #   expect(ui.interactive(menu)).to receive(:menu)
  # end



end