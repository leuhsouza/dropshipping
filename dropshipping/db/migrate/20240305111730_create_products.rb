class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :supllier, null: false, foreign_key: true
      t.decimal :prince

      t.timestamps
    end
  end
end
