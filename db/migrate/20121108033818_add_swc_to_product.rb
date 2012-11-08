class AddSwcToProduct < ActiveRecord::Migration
  def change
    add_column :products, :swc, :string
  end
end
