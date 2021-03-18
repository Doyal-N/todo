class ItemsController < ApplicationController

  private

  def item
    @item ||= Item.find(params[:list_id])
  end
end
