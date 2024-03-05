class Product < ApplicationRecord
  belongs_to :supplier
  has_many :portfolio_products

  validates :price, presence: true
end
