class AddsessIdToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :sess_id, :integer
  end
end