feature 'on the home page' do
  scenario 'it displays text' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
