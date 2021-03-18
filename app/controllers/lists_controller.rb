class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
  end

  private

  def list
    @list ||= List.find(params[:id])
  end

  helper_method :list
end
