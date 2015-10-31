def sign_in_and_play
  visit('/')
  fill_in(:name1, with: 'Rebel Alliance')
  fill_in(:name2, with: 'The Empire')
  click_button 'Submit'
end

def take_turn
  click_button('Attack')
  click_button('Continue battle')
end
