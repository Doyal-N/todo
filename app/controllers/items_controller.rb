class ItemsController < ApplicationController

  def create
    list = List.find(params[:list_id])
    @item = list.items.create(item_params)
  end
end
