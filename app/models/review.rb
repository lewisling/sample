class Review < ActiveRecord::Base
  attr_accessible :actual_date, :comment, :milestone_id, :planned_date, :product_id, :reviewresult_id, :reviewpurpose_id

  belongs_to :product
  belongs_to :milestone
  belongs_to :reviewpurpose
  belongs_to :reviewresult
end
