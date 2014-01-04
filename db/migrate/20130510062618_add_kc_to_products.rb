class AddKcToProducts < ActiveRecord::Migration
  def change
    add_column :products, :kc1_id, :integer
    add_column :products, :kc1c, :string
    add_column :products, :kc2_id, :integer
    add_column :products, :kc2c, :string
    add_column :products, :kc3_id, :integer
    add_column :products, :kc3c, :string
  end
end
