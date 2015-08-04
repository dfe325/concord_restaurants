require 'rails_helper'
require 'spec_helper'


feature 'user creates new review', %{
  As a user
  I want to sign in
  And create a new review
} do

  let!(:user) { FactoryGirl.create :user }
  let!(:restaurant) { FactoryGirl.create :restaurant }

  before do
    visit root_path
    sign_in_as user
  end

  scenario 'Submitted correctly with comment and rating' do
    visit restaurant_path(restaurant)

    click_link 'New Review'

    fill_in 'Comment', with: 'A decent place to get a bite.'
    select '5', from: 'Rating'
    click_button 'Add Review'

    expect(page).to have_content("A decent place to get a bite.")
    expect(page).to have_content("5")
    expect(page).to have_content("Review added")

  end

  scenario 'Submitted correctly with comment and NO rating' do
    visit species_path(species)

    click_link 'New Review'

    fill_in 'Comment', with: 'A decent place to get a bite.'
    click_button 'Add Review'

    expect(page).to have_content("A decent place to get a bite.")
    expect(page).to have_content("Review added")
  end

  scenario 'Submitted incorrectly by leaving comment blank' do
    visit species_path(species)

    click_link 'New Review'

    fill_in 'Comment', with: ''
    select '5', from: 'Rating'
    click_button 'Add Review'

    expect(page).to have_content("Comment can't be blank")
  end

end
