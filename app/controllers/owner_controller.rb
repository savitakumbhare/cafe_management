class OwnerController < ApplicationController
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
      redirect_to owner_index_path
    else
      flash[:error] = new_menu.errors.full_messages.join(" ,  ")
      redirect_to owner_index_path
    end
  end

  def destroy
    id = params[:id]
    menu_item = MenuItem.find(id)
    menu_item.destroy
    redirect_to owner_index_path
  end

  def login
    email = params[:email]
    password = params[:password]
    user = User.find_by(email: email, password: password)
    render plain: user.present?
  end

  def orders
    render plaintext "here"
  end
end
