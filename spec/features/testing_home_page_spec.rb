feature 'testing home page' do
	scenario 'can display basic content' do
		visit('/')
		expect(page).to have_content 'Welcome to Battle'
	end
end