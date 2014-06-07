require 'ui'

describe UI do

  let(:ui) { UI.new }
  
  it 'displays an introductory message' do
    expect(ui.start).to eq "Welcome to Julia's Diner. Please select your choices from the menu by keying in the number of the dish."
  end

  # xit 'can display the menu' do
  #   expect(ui.interactive_menu).to receive(:)
  # end

end