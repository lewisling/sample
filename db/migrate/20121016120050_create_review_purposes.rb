class CreateReviewPurposes < ActiveRecord::Migration
  def change
    create_table :review_purposes do |t|
      t.string :purpose

      t.timestamps
    end
  end
end
