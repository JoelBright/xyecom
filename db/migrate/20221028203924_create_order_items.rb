class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
      t.integer :quantity, null: false, default: 0
      t.decimal :price, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end
