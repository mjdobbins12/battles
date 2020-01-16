feature 'testing home page' do
	scenario 'can display basic content' do
		visit('/')
		expect(page).to have_content 'Welcome to Battle'
	end
	
	scenario 'allow player names to be entered' do
		visit('/')
		expect(page).to have_field 'p1'
		expect(page).to have_field 'p2'
	end
end