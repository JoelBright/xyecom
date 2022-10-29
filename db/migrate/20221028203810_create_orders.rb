class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :token
      t.decimal :sub_total, null: false, precision: 15, scale: 2

      t.timestamps
    end
  end
end
