class AddIdhIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :idh_id, :integer
  end
end
