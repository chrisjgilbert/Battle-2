def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Chris"
  fill_in :player_2_name, with: "Asad"
  click_button 'Submit'
end

def attack
  click_button 'Attack'
  click_button 'Continue'
end
