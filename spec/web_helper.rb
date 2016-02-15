def sign_up
 	visit('/users/new')
	fill_in(:name, with: 'elaine')
	fill_in(:username, with: 'finble')
	fill_in(:email, with: 'elaine@gmail.com')
	fill_in(:password, with: 'oranges')
	click_button 'Sign up'
end