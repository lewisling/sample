class CreateSwas < ActiveRecord::Migration
  def change
    create_table :swas do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
