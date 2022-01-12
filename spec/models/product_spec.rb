require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validation tests' do
    it 'is invalid without a name' do
      product = Product.new(description: 'This cool hockey stick will help you score lots of goals.',
                            price: 229.99)
      expect(product.valid?).to be_false
    end

    it 'is invalid if name is too long' do
      product = Product.new(name: 'Super Cool New Hockey Stick That Will Help You Score Many Goals In Your Hockey Games',
                            description: 'This cool hockey stick will help you score lots of goals.',
                            price: 229.99)
      expect(product.valid?).to be_false
    end

    it 'is invalid without a description' do
      product = Product.new(name: 'Super Cool Hockey Stick', price: 229.99)
      expect(product.valid?).to be_false
    end

    it 'is invalid if description is too long' do
      product = Product.new(name: 'Super Cool Hockey Stick',
                            description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim aliquam fugiat hic necessitatibus rerum iure, et, ducimus adipisci, commodi eos eveniet excepturi. Dolorum deleniti provident maiores. Expedita provident blanditiis minima ratione voluptatem, laborum, atque enim odio doloremque molestiae accusantium dolore autem rerum ducimus harum iusto ipsa illum ad eveniet dicta incidunt veritatis aliquam dolor. Unde magnam, molestias vel eum libero cupiditate nostrum consequuntur recusandae eveniet dignissimos deserunt placeat aspernatur eaque, deleniti molestiae? Fuga dolore maxime laudantium!',
                            price: 229.99)
      expect(product.valid?).to be_false
    end

    it 'is invalid without a price' do
      product = Product.new(name: 'Super Cool Hockey Stick',
                            description: 'This cool hockey stick will help you score lots of goals.')
      expect(product.valid?).to be_false
    end

    it 'is invalid if price is not a number' do
      product = Product.new(name: 'Super Cool Hockey Stick',
                            description: 'This cool hockey stick will help you score lots of goals.',
                            price: '229.99')
      expect(product.valid?).to be_false
    end

    it 'is invalid if price is <= 0' do
      product = Product.new(name: 'Super Cool Hockey Stick',
                            description: 'This cool hockey stick will help you score lots of goals.',
                            price: 0)
      expect(product.valid?).to be_false
    end

    it 'is invalid if price is >= 10000' do
      product = Product.new(name: 'Super Cool Hockey Stick',
                            description: 'This cool hockey stick will help you score lots of goals.',
                            price: 10000)
      expect(product.valid?).to be_false
    end

    it 'is valid with valid attributes' do
      product = Product.new(name: 'Super Cool Hockey Stick',
                            description: 'This cool hockey stick will help you score lots of goals.',
                            price: 229.99)
      expect(product.valid?).to be_true
    end
  end
end
