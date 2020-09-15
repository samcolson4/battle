feature 'Tesing player name filling in' do
  scenario 'Players enter their name in a form, submit the form, and see their names on screen' do
    sign_in_and_play
    expect(page).to have_content 'Player one: Sam'
    expect(page).to have_content 'Player two: Ollie'
  end
end

feature 'Players have stored hit  points' do
  scenario "Players exist and have hit 100 points when created" do
    sign_in_and_play
    expect(page).to have_content "HP: 100"
  end
end

feature "I can attack player 2" do
  scenario "i get confirmation I have attacked player 2" do
    sign_in_and_play
    attack_player_one
    expect(page).to have_content "Ollie attacked Sam"
  end
end
