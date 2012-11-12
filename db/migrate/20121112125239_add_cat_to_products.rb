class AddCatToProducts < ActiveRecord::Migration
  def change
    add_column :products, :cat, :string
  end
end
