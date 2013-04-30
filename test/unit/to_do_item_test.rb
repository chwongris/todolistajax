require 'test_helper'

class ToDoItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  context "A todo item" do
    setup do
      @destination = Destination.create(:name => "New York")
      @to_do_item = ToDoItem.create(:name => "Drink Pickleback", :location => "618 Grand St.", :destination => @destination)
    end


    should "put valies in the latitude and longitude" do
      assert_not_nil @to_do_item.latitude
      assert_not_nil @to_do_item.longitude
    end
  end
end