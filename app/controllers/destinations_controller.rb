class DestinationsController < ApplicationController


  def index
    @destinations = Destination.all
    # binding.pry
  end

  def show
    @destination = Destination.find(params[:id])
    # binding.pry
  end

  def create
    @destination = Destination.new(params[:destination])
    @destination.save!
    render @destination
  end

end
