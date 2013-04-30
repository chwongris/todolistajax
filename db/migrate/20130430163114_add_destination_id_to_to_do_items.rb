class AddDestinationIdToToDoItems < ActiveRecord::Migration
  def change
    add_column :to_do_items,:destination_id, :integer
  end
end
