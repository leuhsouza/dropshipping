class CreatePortfolioProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :portfolio_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
