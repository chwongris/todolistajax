class Destination < ActiveRecord::Base
  attr_accessible :name
  has_many :to_do_items
end
