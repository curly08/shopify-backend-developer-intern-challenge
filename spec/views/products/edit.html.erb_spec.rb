require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(name: 'Super Cool Hockey Stick',
                                                description: 'This cool hockey stick will help you score lots of goals.',
                                                price: 229.99))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "label", text: "Name"
      assert_select "label", text: "Description"
      assert_select "label", text: "Price"
    end
  end
end
