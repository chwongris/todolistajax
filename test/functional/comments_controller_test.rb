require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  context "A comment" do
    context "Post to /comments" do
      setup do
        @to_do_item = ToDoItem.create
        post :create, :comment => {:body =>"Blah", :to_do_item_id => @to_do_item.id}
      end 

      should "increase the comment count" do
        assert_equal 1, Comment.count
      end

      should "have an associated todo item" do  
        assert_equal assigns(:comment).to_do_item, @to_do_item
      end

      should "give a http 200" do
        assert_response :success     
      end 

      # contect "An AJAX request to create" do



    end
  end
end
