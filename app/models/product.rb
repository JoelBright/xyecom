class Product < ApplicationRecord
  validates :title, presence: true

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :variants, class_name: 'ProductVariant'

  def self.search(search)
    if search
      product_results = Product.find_by(title: search)
      if product_results
        self.where(id: product_results)
      else
        @products = Product.all
      end
    else
      @products = Product.all
    end
  end
end
