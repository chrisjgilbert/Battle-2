feature 'attacking opponent' do
  scenario 'player attacks opponent' do
    sign_in_and_play
    expect(page).to have_content 'Chris attacked Asad!'
  end
end
