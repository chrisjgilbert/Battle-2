feature 'attacking opponent' do
  scenario 'player attacks opponent' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Chris attacked Asad!'
  end
  scenario 'player 1 reduces player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "Asad's HP: 60"
    expect(page).to have_content "Asad's HP: 50"
  end
end
