class TodoItemsController < ApplicationController

  private

  def todo_item
    @todo_item ||= TodoItem.find(params[:todo_list_id])
  end
end
