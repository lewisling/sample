class AddTrafficIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :traffic_id, :integer
  end
end
