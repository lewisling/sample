class CreateReviewResults < ActiveRecord::Migration
  def change
    create_table :review_results do |t|
      t.string :conclusion

      t.timestamps
    end
  end
end
