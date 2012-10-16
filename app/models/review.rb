class Review < ActiveRecord::Base
  attr_accessible :actual_date, :comment, :milestone_id, :planned_date, :product_id, :reviewresult_id, :reviewtype_id
end
