class CreateCustomerOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_orders do |t|
      t.integer :customer_Id
      t.string :menu_item
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end
