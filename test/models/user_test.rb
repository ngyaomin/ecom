require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "associations" do
    should have_many(:products)
  end
end
