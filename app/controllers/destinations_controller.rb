class DestinationsController < ApplicationController


  def index
    order = params[:order] || :position
    @destinations = Destination.order(order).all

    respond_to do |format|
    format.html
    format.js{
    render :template => 'destinations/sort', :content_type => 'text/javascript', :locals => {:destinations => @destinations}
    }
    end# binding.pry
  end

  def show
    @destination = Destination.find(params[:id])
    # binding.pry
  end

  def update_position
    positions = params[:results]
    positions.each do |position|
      original = position[1][0]
      moved = position[1][1]
      Destination.update_all({:position => moved}, {:id => original})
    end
    render :text => @destination
  end

  def create
    @destination = Destination.new(params[:destination])
    @destination.save!
    render :template => 'destinations/create', :content_type => 'text/javascript'
  end

end
