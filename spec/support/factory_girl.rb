FactoryGirl.define do

  factory :user do
    sequence(:username) { |n| "username#{n}" }
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :restaurant do
    sequence(:name) { |n| "Main Street Cafe #{n}" }
    sequence(:location) { |n| "Main Street #{n}" }
  end

  factory :review do
    comment 'Good Restaurant'
    rating 7
    restaurant
    user
  end
end
