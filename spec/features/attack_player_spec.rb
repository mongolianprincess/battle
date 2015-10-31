require 'spec_helper'

feature 'Indicate battle turn'do
  scenario 'shows current player'do
  sign_in_and_play
  expect(page).to have_content('Battle Turn: Rebel Alliance')
  end
end

feature 'A player attacks' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack The Empire')
    expect(page).to have_content('Rebel Alliance attacked The Empire')
  end

  scenario 'player 2 hp deducted by 10' do
    sign_in_and_play
    take_turn
    expect(page).to have_content('The Empire 90/100HP')
  end

  scenario 'player 1 hp displayed' do
    sign_in_and_play
    take_turn
    expect(page).to have_content('Rebel Alliance 100/100')
  end

  scenario 'player 1 hp deducted by 10' do
    sign_in_and_play
    take_turn
    take_turn
    expect(page).to have_content('Rebel Alliance 90/100')
  end

  scenario 'players switch turns' do
    sign_in_and_play
    take_turn
    expect(find("input[type=\"submit\"]").value).to eq 'Attack Rebel Alliance'
  end
  scenario 'players we switch turns and continue battle' do
    sign_in_and_play
    take_turn
    click_button('Attack Rebel Alliance')
    expect(page).to have_content('The Empire attacked Rebel Alliance')
  end


end
