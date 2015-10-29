require 'spec_helper'

  feature 'Players enter their names' do
    scenario 'player 1 enters their name' do
      sign_in_and_play
      expect(page).to have_content('Rebel Alliance vs. The Empire')
    end
  end
