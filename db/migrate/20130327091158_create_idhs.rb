class CreateIdhs < ActiveRecord::Migration
  def change
    create_table :idhs do |t|
      t.string :name

      t.timestamps
    end
  end
end
