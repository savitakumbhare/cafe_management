class OwnerController < ApplicationController
  def create
    menu_category = params[:category]
    menu_category_id = MenuCategory.where(name: menu_category).ids.first
    menu_name = params[:name]
    menu_description = params[:description]
    menu_price = params[:price]

    new_menu = MenuItem.new(
      menu_category_id: menu_category_id,
      name: menu_name,
      description: menu_description,
      price: menu_price,
    )
    if new_menu.save
      redirect_to owner_index_path
    else
      flash[:error] = new_todo.errors.full_messages.join(" ,  ")
      redirect_to owner_index_path
    end
  end
end
