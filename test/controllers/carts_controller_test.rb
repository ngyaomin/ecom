require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
   get carts_url
   assert_response :success
 end

end
