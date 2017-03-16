require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :address => "MyText",
      :contact => "MyString",
      :cart_id => 1
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "textarea#payment_address[name=?]", "payment[address]"

      assert_select "input#payment_contact[name=?]", "payment[contact]"

      assert_select "input#payment_cart_id[name=?]", "payment[cart_id]"
    end
  end
end
