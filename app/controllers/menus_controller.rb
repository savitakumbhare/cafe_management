class MenusController < ApplicationController
  def index
    @menus = .all
    render "index"
  end
end
