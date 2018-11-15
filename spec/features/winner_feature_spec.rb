feature 'the winner is displayed' do
  scenario 'player wins when opponent reaches 0 HP' do
    sign_in_and_play
    10.times { attack_and_continue }
    click_button 'Attack'
    expect(page).to have_content "Chris won!"
  end
end
