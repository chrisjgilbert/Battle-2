feature 'hit points' do
  scenario 'can view players hit points' do
    visit '/'
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Asad"
    click_button 'Submit'
    expect(page).to have_content "Asad's HP: 60"
  end
end
