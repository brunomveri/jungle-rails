class Admin::DashboardController < ApplicationController
  def show
    @products_count = Product.count
    @product_categories_count = Category.count
  end
end
