class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :tax, precision: 15, scale: 2, default: "0.0"
      t.boolean :delivery, null: false, default: false
      t.decimal :delivery_fee, precision: 15, scale: 2, default: "0.0"
      t.decimal :order_subtotal, precision: 15, scale: 2, default: "0.0"
      t.decimal :total, precision: 15, scale: 2, default: "0.0"
      t.datetime :order_date
      t.integer :line_item_id
      t.integer :cart_id
      t.boolean :order_status, default: true
      t.decimal :tax_rate, default: "0.07"

      t.timestamps
    end
  end
end
