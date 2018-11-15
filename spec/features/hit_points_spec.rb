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

  xscenario 'player wins when opponent reaches 0 HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 50"
    expect(page).to have_content "Chris's HP: 60"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 50"
    expect(page).to have_content "Chris's HP: 50"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 40"
    expect(page).to have_content "Chris's HP: 50"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 40"
    expect(page).to have_content "Chris's HP: 40"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 30"
    expect(page).to have_content "Chris's HP: 40"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 30"
    expect(page).to have_content "Chris's HP: 30"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 20"
    expect(page).to have_content "Chris's HP: 30"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 20"
    expect(page).to have_content "Chris's HP: 20"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 10"
    expect(page).to have_content "Chris's HP: 20"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Asad's HP: 10"
    expect(page).to have_content "Chris's HP: 10"
    click_button 'Attack'
    click_button 'Continue'
    expect(page).to have_content "Chris won!"
  end
end
