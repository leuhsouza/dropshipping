class Seller < ApplicationRecord
  has_many :portfolio_products
  validates :name, presence:true
  validates :email, presence:true
  validates :phone, presence:true
end
