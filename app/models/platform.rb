class Platform < ActiveRecord::Base
  attr_accessible :hardware, :software

  has_many :products
end
