class Product < ApplicationRecord
  include Filterable

  has_one_attached :image
  belongs_to :category

  scope :filter_by_category, -> (category) { 
    joins(:category).where('category.name' => category)
  }
end
