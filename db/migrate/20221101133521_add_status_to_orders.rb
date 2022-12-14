class AddStatusToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :status, :string, default: 'cart'

    Order.where(status: nil).update_all(status: 'cart')
  end
end
