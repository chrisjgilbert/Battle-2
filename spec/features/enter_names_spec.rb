feature 'on the home page' do
  scenario 'players enter names' do
    sign_in_and_play
    expect(page).to have_content 'Chris vs. Asad'
  end
end
