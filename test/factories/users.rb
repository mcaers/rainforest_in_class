# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name  "Michael"
    sequence(:email) {|n| "user_#{n}@gmail.com"  } 
    password "test"
    password_confirmation "test"
  end
end
