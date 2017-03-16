require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :address => "MyText",
      :contact => "MyString",
      :cart_id => 1
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "textarea#payment_address[name=?]", "payment[address]"

      assert_select "input#payment_contact[name=?]", "payment[contact]"

      assert_select "input#payment_cart_id[name=?]", "payment[cart_id]"
    end
  end
end
