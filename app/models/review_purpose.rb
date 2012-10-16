class ReviewPurpose < ActiveRecord::Base
  attr_accessible :purpose

  has_many :reviews
end
