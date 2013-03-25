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

end
