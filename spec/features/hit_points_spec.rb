feature 'hit points' do
  scenario 'can view players hit points' do
    sign_in_and_play
    expect(page).to have_content "Asad's HP: 60"
  end
end
