require 'capybara/rspec'
require 'web_helper'


#User Story 1
#############

# As a Make
# So that I can post messages on Chitter as me
# I want to sign up for Chitter

feature 'User sign up for Chitter: ' do

	scenario 'I can sign up as a new user' do

		sign_up
		expect(page).to have_content('Welcome, elaine')
		expect(User.first.email).to eq('elaine@gmail.com')

	end
end




	