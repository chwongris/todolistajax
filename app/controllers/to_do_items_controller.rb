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
    render :template => 'to_do_items/create', :content_type => 'text/javascript'
  end

  def like
    @item = ToDoItem.find(params[:id])
    Like.create(:to_do_item_id => @item.id, :user_id => 1 )
    render :nothing => true
  end

end
