class PortfolioProduct < ApplicationRecord
  belongs_to :product
  belongs_to :seller
end
