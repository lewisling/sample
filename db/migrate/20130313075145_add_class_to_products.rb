class AddClassToProducts < ActiveRecord::Migration
  def change
    add_column :products, :NewPlatform, :boolean
    add_column :products, :NewSDK, :boolean
    add_column :products, :NewApp, :boolean
    add_column :products, :NewIDH, :boolean
    add_column :products, :NewODM, :boolean
    add_column :products, :AppNameVersion, :string
    add_column :products, :BaseProduct, :string
    add_column :products, :ChangesFromBaseProduct, :string
  end
end
