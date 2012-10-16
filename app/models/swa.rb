class Swa < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :products
end
