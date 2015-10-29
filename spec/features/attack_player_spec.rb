require 'spec_helper'

feature 'A player attacks' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Rebel Alliance attacked The Empire')
  end

  scenario 'player 2 hp deducted by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue battle')
    expect(page).to have_content('The Empire 90/100HP')
  end
end
