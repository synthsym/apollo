# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@testing.com"
  end

  factory :user do
    name "John Citizen"
    email
    password "supersecret"
  end
end
