class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.integer :menu_item_id, null: false
      t.integer :quantity, default: 0
      t.decimal :line_item_subtotal, precision: 15, scale: 2, default: "0.0"
      t.decimal :unit_price, precision: 15, scale: 2, default: "0.0"

      t.timestamps
    end
  end
end
