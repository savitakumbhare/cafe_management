class OrderController < ApplicationController
  require "date"

  def new
    menu_item_id = params[:id]
    menu_item_name = MenuItem.find(menu_item_id).name
    menu_item_price = MenuItem.find(menu_item_id).price
    order_id = Order.where(user_id: session[:current_user_id]).ids
    order_id.each do |id|
      order = OrderItem.create(
        order_id: id,
        menu_item_id: menu_item_id,
        menu_item_name: menu_item_name,
        menu_item_price: menu_item_price,
      )
    end

    redirect_to "/sessions/customer"
  end

  def show
    render "/order/custview"
  end

  def delete
    id = params[:id]
    menu_item = OrderItem.find(id)
    menu_item.destroy

    redirect_to "/order/custview"
  end
end
