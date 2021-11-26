class MenuItem < ApplicationRecord
  belongs_to :menu_category

  def item_name
    id = params[:id]
    return MenuItem.find(id).name
  end

  def item_price
    id = params[:id]
    return MenuItem.find(id).price
  end
end
