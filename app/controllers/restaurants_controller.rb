class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show ]
  def index
    @restaurants = Restaurant.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
