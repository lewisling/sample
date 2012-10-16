class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :hardware
      t.string :software

      t.timestamps
    end
  end
end
