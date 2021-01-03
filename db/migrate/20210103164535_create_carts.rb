class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :user_id, null: false
      t.integer :session_id

      t.timestamps
    end
  end
end
