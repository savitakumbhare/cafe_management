class MenuController < ApplicationController
  def index
  end

  def create
    menu_category = params[:category]
    menu_category_id = MenuCategory.where(name: menu_category).ids.first.to_i
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
      flash[:notice] = "Menu added sucessfully !"
      redirect_to menu_index_path
    else
      flash[:error] = new_menu.errors.full_messages.join(" ,  ")
      redirect_to menu_index_path
    end
  end

  def destroy
    id = params[:id]
    menu_item = MenuItem.find(id)
    menu_item.destroy
    redirect_to menu_index_path
  end

  def show
    redirect_to owner_index_path
  end
end
