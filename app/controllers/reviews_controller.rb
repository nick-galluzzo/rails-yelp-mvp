class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    # Remember to do this - it adds the review to specific restaurant

  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant), notice: "review has been successfully added"
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
