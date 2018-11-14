feature 'attacking opponent' do
  scenario 'player attacks opponent' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Chris attacked Asad!'
  end
end
