require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "associations" do
    should have_many(:products)
    should have_many(:orders)
  end

  context "validations" do
    should validate_presence_of(:email)
    should validate_uniqueness_of(:email)
    should allow_value("user@example.com").for(:email)
    should_not allow_value("not-an-email").for(:email)
  end

end
