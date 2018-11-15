feature 'hit points' do
  scenario 'can view players default hit points' do
    sign_in_and_play
    expect(page).to have_content "Asad's HP: 60"
    expect(page).to have_content "Chris's HP: 60"
  end

  scenario 'can view players hit points' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 50"
    expect(page).to have_content "Chris's HP: 60"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 50"
    expect(page).to have_content "Chris's HP: 50"
  end
end
