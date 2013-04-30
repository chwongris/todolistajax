class Comment < ActiveRecord::Base
  attr_accessible :body, :to_do_item_id
  belongs_to :to_do_item
end
