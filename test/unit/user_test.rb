require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should ensure_length_of(:password).is_at_least(4)
  should ensure_length_of(:password_confirmation).is_at_least(4)

  context "Minimal User not saved" do
    setup { @user = Factory.build(:user) }
    should("validate") { assert @user.valid? }
  end

  context "Minimal user" do
    setup { @user = Factory(:user) }
    should validate_uniqueness_of(:email)
  end

end
