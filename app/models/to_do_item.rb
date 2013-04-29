class ToDoItem < ActiveRecord::Base
  attr_accessible :completed, :name
end
