class AddTrafficToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :traffic, :string
  	add_column :products, :swccomfirmed, :boolean
  end
end
