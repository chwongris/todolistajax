class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :to_do_item_id

      t.timestamps
    end
  end
end
