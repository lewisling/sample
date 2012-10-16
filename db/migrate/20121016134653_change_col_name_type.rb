class ChangeColNameType < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    rename_column :reviews, :reviewtype_id, :reviewpurpose_id
  end
end
