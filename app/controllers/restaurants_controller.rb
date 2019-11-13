class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :create]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
