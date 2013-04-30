class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.save!
    render :partial => 'comments/comment', :locals => {:comment => @comment}, :content_type => 'text/html'
    # render :template => 'comments/create', :locals => {:comment => @comment}, :content_type => 'text/javascript'
  end

end
