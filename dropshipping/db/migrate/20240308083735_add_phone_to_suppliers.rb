class AddPhoneToSuppliers < ActiveRecord::Migration[7.1]
  def change
    add_column :suppliers, :phone, :string
  end
end
