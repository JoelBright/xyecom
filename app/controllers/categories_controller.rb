class CategoriesController < ApplicationController
  def index
    @message = "Hello, dear"
    @categories = Category.search(params[:search]).joins(:products).select('categories.*, count(products.id) as products_count').group('categories.id').order(:title)
  end
end
