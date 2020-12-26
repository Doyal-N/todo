class TodoListsController < ApplicationController

  def index
  end

  def show
  end

  private

  def todo_list
    @todo_list ||= TodoList.find(params[:id])
  end

  helper_method :todo_list
end
