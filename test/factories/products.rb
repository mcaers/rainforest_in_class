# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  # Equivalent of
  # Product.create(:name => "Shoes", :description => "Nice patent white leather shoes", :price_in_cents => 9900)
  factory :product do
    name "Shoes"
    description "Nice patent white leather shoes"
    price_in_cents 9900
  end

  factory :cheap_product, :class => Product do
    name "Book"
    description "Has pictures"
    price_in_cents 99
  end

end