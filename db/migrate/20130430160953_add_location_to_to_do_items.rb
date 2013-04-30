class AddLocationToToDoItems < ActiveRecord::Migration
  def change
  add_column :to_do_items, :location, :string
  add_column :to_do_items,:latitude, :float
  add_column :to_do_items,:longitude, :float
  end
end
