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

feature "Removes two HP from a player when attacked" do
  scenario "Player two attacks player one, removing 2HP" do
    sign_in_and_play
    attack_player_one
    expect($player_one.hp).to eq(Player::HP - Player::ATTACK_VALUE)
  end
end