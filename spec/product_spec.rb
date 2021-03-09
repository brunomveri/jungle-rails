require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.new
 end

  describe 'Validations' do
    # validation tests/examples here
    it "will not save with invalid name attribute" do
      @product = Product.new(price: 50, quantity: 5, category: @category)
      expect(@product).to_not be_valid
    end

    it "will not save with invalid price attribute" do
      @product = Product.new(name: "product1", quantity: 15, category: @category)
      expect(@product).to_not be_valid
    end

    it "will not save with invalid quantity attribute" do
      @product = Product.new(name: "product2", price: 25, category: @category)
      expect(@product).to_not be_valid  
    end

    it "will not save with invalid category attribute" do
      @product = Product.new(name: "product3", price: 30, quantity: 4)
      expect(@product).to_not be_valid
    end

    it "will save with all valid attributes" do
      @product = Product.new(name: "product4", price: 40, quantity: 8, category: @category)
      expect(@product).to be_valid
    end

  end
end