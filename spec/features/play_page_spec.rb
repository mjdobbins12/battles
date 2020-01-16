feature 'entering player names' do
	scenario 'player names are displayed after filling in the form' do
		visit('/')
		fill_in :p1, with: "Frank"
		fill_in :p2, with: "Mahmoud"
		click_button 'Submit'
		expect(page).to have_content("Frank vs Mahmoud")
		expect(page).to have_content("Frank's hit points: 100")
		expect(page).to have_content("Mahmoud's hit points: 100")
	end
end