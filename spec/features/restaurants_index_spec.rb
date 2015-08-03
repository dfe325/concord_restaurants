require 'rails_helper'

feature 'user visits home page' do
  scenario 'user visits home page' do
    visit root_path

    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Sign In')
    expect(page).to have_content('Restaurants')
  end
end
