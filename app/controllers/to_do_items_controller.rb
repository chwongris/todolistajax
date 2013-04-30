class ToDoItemsController < ApplicationController

  def index
    @items = ToDoItem.all
    # binding.pry
  end

  def show
    @item = ToDoItem.find(params[:id])
    # binding.pry
  end

  def create
    @item = ToDoItem.new(params[:to_do_item])
    # binding.pry
    @item.save!
    render @item
  end

end
