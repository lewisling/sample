class CreateSwClasses < ActiveRecord::Migration
  def change
    create_table :sw_classes do |t|
      t.string :level

      t.timestamps
    end
  end
end
