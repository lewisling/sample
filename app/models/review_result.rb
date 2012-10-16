class ReviewResult < ActiveRecord::Base
  attr_accessible :conclusion

  has_many :reviews
end
