class User < ActiveRecord::Base
  attr_accessible :email, :username
  has_many :likes
  has_many :my_to_do_items, :class_name => 'ToDoItem'
  has_many :liked_items, :through => :likes, :class_name => 'ToDoItem'
end
