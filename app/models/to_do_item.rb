class ToDoItem < ActiveRecord::Base
  attr_accessible :completed, :name
  has_many :comments
end
