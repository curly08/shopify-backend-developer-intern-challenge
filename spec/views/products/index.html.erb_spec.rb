require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(name: 'Super Cool Hockey Stick',
                      description: 'This cool hockey stick will help you score lots of goals.',
                      price: 229.99),
      Product.create!(name: 'Super Cool Baseball Bat',
                      description: 'This cool baseball bat will help you score lots of homeruns.',
                      price: 199.99)
    ])
  end

  it "renders a list of products" do
    render

    expect(rendered).to include('Super Cool Hockey Stick')
    expect(rendered).to include('Super Cool Baseball Bat')
  end
end
