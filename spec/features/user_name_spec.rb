require './app'
require 'spec_helper.rb'

  feature 'Players enter their names' do
    scenario 'player 1 enters their name' do
      visit('/')
      fill_in(:name1, with: 'Amy')
      fill_in(:name2, with: 'George')
      click_button 'Submit'
      expect(page).to have_content('Amy vs. George')
    end
  end
