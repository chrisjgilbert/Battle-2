feature 'players switch turns' do
  scenario 'player 1 takes turn then player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Chris attacked Asad!'
    click_button 'Continue'
    click_button 'Attack'
    expect(page).to have_content 'Asad attacked Chris!'
    expect(page).to have_content "Chris's HP: 50"
    expect(page).not_to have_content 'Chris attacked Asad!'
    expect(page).not_to have_content "Asad's HP: 60"
  end
end
