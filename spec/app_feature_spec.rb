feature 'on the home page' do
  scenario 'players enter names' do
    visit '/'
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Asad"
    click_button 'submit'
    expect(page).to have_content 'Chris vs. Asad'
  end
end
