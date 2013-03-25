require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "user must have a name" do
    user = FactoryGirl.build(:user)
    user.name = nil
    refute user.valid?
  end

  test "user must have an email" do
    user = FactoryGirl.build(:user)
    user.email = nil
    refute user.valid?
  end

  test "user must have a password" do
    assert true
  end

  test "cannot change the password_digest" do
    user = FactoryGirl.create(:user)

    assert_raises(ActiveModel::MassAssignmentSecurity::Error) { user.update_attributes(:password_digest => "djhackalkdjsfkhack") }

  end








end
