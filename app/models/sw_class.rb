class SwClass < ActiveRecord::Base
  attr_accessible :level

  has_many :products
end
