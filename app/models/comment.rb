class Comment < ActiveRecord::Base
  attr_accessible :body, :to_do_item_id
end
