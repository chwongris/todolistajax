require 'test_helper'

class ToDoItemsControllerTest < ActionController::TestCase

  context "The ToDoItems Controller" do
    setup do 
      3.times { ToDoItem.create }
    end
  

  context "GET to index" do
    setup do
      get :index
    end

    should "give me a HTTP 200" do
      assert_response :success
    end

    should "give me 3 Todo Items" do
      assert_equal 3, assigns(:items).length
      assert_equal ToDoItem, assigns(:items).first.class
    end
  end

  context "Get to show" do
    setup do
      get :show, :id => 1
    end

    should "give me a HTTP 200" do
      assert_response :success
    end

    should "give me 1 Todo Item" do
      assert_equal ToDoItem.find(1), assigns(:item)
    end
  end
end

end
