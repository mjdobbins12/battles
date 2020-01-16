def sign_in_and_play
	visit('/')
	fill_in :p1, with: "Frank"
	fill_in :p2, with: "Mahmoud"
	click_button 'Submit'
end
