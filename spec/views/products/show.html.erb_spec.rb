require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(name: 'Super Cool Hockey Stick',
                                                description: 'This cool hockey stick will help you score lots of goals.',
                                                price: 229.99))
  end

  it "renders attributes in <p>" do
    render

    expect(rendered).to include('Super Cool Hockey Stick')
  end
end
