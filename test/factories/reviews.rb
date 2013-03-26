# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    user nil
    product nil
    comment "MyText"
  end
end
