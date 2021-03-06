require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :address => "MyText",
      :contact => "Contact",
      :cart_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/2/)
  end
end
