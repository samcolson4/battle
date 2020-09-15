feature 'Tesing player name filling in' do
  scenario 'Players enter their name in a form, submit the form, and see their names on screen' do
    visit('/')
    fill_in 'player_one', with: 'Sam'
    fill_in 'player_two', with: 'Ollie'
    click_button 'Submit'
    expect(page).to have_content 'Player one: Sam'
    expect(page).to have_content 'Player two: Ollie'
  end
end