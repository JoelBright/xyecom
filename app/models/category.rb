class Category < ApplicationRecord
  validates :title, presence: true

  has_many :product_categories
  has_many :products, through: :product_categories

  def self.search(search)
    if search
      category_results = Category.find_by(title: search)
      if category_results
        self.where(id: category_results)
      else
        @categories = Category.all
      end
    else
      @categories = Category.all
    end
  end
end
