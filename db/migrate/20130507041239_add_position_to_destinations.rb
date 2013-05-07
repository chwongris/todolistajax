class AddPositionToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :position, :integer
  end
end
