# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name  "Michael"
    email "michael@gmail.com"
    password "test"
    password_confirmation "test"
  end
end
