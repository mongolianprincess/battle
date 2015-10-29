require './app'
require 'spec_helper.rb'

feature "Player 1 see Player 2's hit points" do
  scenario "Player 1 starts battle" do
    visit('/')
    fill_in(:name1, with: 'Rebel Alliance')
    fill_in(:name2, with: 'The Empire')
    click_button 'Submit'
    expect(page).to have_content('The Empire 100/100HP')
  end
end
