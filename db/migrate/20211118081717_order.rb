class Order < ActiveRecord::Migration[6.1]
  has_many :order_items
  belongs_to :user

  def change
    belongs_to :order
    belongs_to :menu_item
  end
end
