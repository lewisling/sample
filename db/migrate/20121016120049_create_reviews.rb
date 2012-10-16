class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.integer :milestone_id
      t.integer :reviewtype_id
      t.date :planned_date
      t.date :actual_date
      t.integer :reviewresult_id
      t.string :comment

      t.timestamps
    end
  end
end
