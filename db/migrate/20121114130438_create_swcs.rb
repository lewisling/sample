class CreateSwcs < ActiveRecord::Migration
  def change
    create_table :swcs do |t|
      t.string :name

      t.timestamps
    end
  end
end
