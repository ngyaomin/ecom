require 'rails_helper'

RSpec.describe "carts/new", type: :view do
  before(:each) do
    assign(:cart, Cart.new(
      :user_id => 1,
      :paid => "",
      : => "",
      := => "MyString"
    ))
  end

  it "renders new cart form" do
    render

    assert_select "form[action=?][method=?]", carts_path, "post" do

      assert_select "input#cart_user_id[name=?]", "cart[user_id]"

      assert_select "input#cart_paid[name=?]", "cart[paid]"

      assert_select "input#cart_[name=?]", "cart[]"

      assert_select "input#cart_=[name=?]", "cart[=]"
    end
  end
end
