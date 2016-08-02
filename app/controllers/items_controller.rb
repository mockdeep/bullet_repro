class ItemsController < ApplicationController

  def index
    @items = Item.includes(:tags)
  end

end
