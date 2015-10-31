require 'spec_helper.rb'

feature "Player 1 see Player 2's hit points" do
  scenario "Player 1 starts battle" do
    sign_in_and_play
    expect(page).to have_content('The Empire 100/100HP')
  end
end

feature "Player 1 see own hit points" do
  scenario "Player 1 starts battle" do
    sign_in_and_play
    expect(page).to have_content ('Rebel Alliance 100/100HP')
  end
end
