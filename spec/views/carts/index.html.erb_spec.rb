require 'rails_helper'

RSpec.describe "carts/index", type: :view do
  # before(:each) do
  #   assign(:carts, [
  #     Cart.create!(
  #       :user_id => 2,
  #       :paid => "",
  #       : => "",
  #       := => "="
  #     ),
  #     Cart.create!(
  #       :user_id => 2,
  #       :paid => "",
  #       : => "",
  #       := => "="
  #     )
  #   ])
  # end

  it "renders a list of carts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "=".to_s, :count => 2
  end
end
