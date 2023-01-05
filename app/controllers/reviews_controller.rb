class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:index, :new, :create]

  def index
    @reviews = Review.where(restaurant_id: @restaurant)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
