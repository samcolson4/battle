def sign_in_and_play
  visit('/')
  fill_in "player_one", with: "Sam"
  fill_in "player_two", with: "Ollie"
  click_button 'Submit'
end

def attack_player_one 
  click_button "Player two attack"
end