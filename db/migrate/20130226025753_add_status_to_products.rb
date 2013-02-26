class AddStatusToProducts < ActiveRecord::Migration
  def change
    add_column :products, :project_status, :text
  end
end
