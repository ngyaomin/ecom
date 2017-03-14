require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  context "associations" do
    should belong_to(:user)
  end

  context "validations" do
    should validate_presence_of(:product_image)
    should validate_presence_of(:name)
    should validate_presence_of(:price)
    should validate_presence_of(:description)
    should validate_presence_of(:inventory_available)
    should validate_presence_of(:purchase_quantity)
  end
end
