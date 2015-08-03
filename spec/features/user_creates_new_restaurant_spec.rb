require 'rails_helper'

feature 'user creates new restaurant', %{
  As a user
  I want to create a new restaurant
} do

  let(:user) { FactoryGirl.create :user }

  # before do
  #   visit root_path
  #   sign_in_as user
  # end

  scenario 'fill out new species form' do
    visit new_restaurant_path

    fill_in 'Restaurant name', with: 'Main Street Cafe'
    fill_in 'Location', with: 'Main Street'
    click_button 'Add Restaurant'

    expect(page).to have_content('Restaurant')
    expect(page).to have_content('added')
  end

  scenario 'Restaurant name filled out incorrectly' do
    visit new_species_path

    fill_in 'Restaurant name', with: ''
    fill_in 'Location', with: 'Main Street'
    click_button 'Add Restaurant'

    expect(page).to have_content("Restaurant can't be blank")
  end

  scenario 'common name filled out incorrectly' do
    visit new_species_path

    fill_in 'Restaurant name', with: 'Main Street Cafe'
    fill_in 'Location', with: ''
    click_button 'Add Restaurant'

    expect(page).to have_content("Location can't be blank")
  end

end
