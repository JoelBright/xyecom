class LastNameNotRequired < ActiveRecord::Migration[7.0]
  def change
    def up
      change_column :orders, :last_name, :string, null: true
    end

    def down
      change_column :orders, :last_name, :string, null: false
    end
  end
end
