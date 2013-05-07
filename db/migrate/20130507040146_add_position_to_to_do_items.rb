class AddPositionToToDoItems < ActiveRecord::Migration
  def change
    add_column :to_do_items, :postition, :integer, :default => 0
  end
end
