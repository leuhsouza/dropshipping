class Supplier < ApplicationRecord
  has_many :products
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
