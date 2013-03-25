require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @p = FactoryGirl.create(:product)
    assert @p.valid?
  end

  # def test_must_have_a_description
  test "must have a description" do
    @p.description = ""
    refute @p.valid?
  end

  test "must have a name" do 
    @p.name = ""
    refute @p.valid?
  end

  test "price_in_cents must be a integer" do 
    @p.price_in_cents = 1.5
    assert !@p.valid?
  end

  test "must have a price_in_cents" do 
    @p.price_in_cents = nil
    refute @p.valid?
  end



end
