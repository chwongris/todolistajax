class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :to_do_item_id

      t.timestamps
    end
  end
end
