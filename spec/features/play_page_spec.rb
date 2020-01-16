require_relative './web_helpers'

feature 'entering player names' do
	scenario 'player names are displayed after filling in the form' do
		sign_in_and_play
		expect(page).to have_content("Frank vs Mahmoud")
		expect(page).to have_content("Frank's hit points: 100")
		expect(page).to have_content("Mahmoud's hit points: 100")
	end
	
	scenario 'players receive confirmation when attacking' do
		sign_in_and_play
		click_button("Attack!")
		expect(page).to have_content("Frank attacked Mahmoud!")
	end
end