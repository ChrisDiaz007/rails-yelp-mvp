class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      # redirect_to restaurants_path
      redirect_to restaurant_path(@restaurant)
    else
      # if the restaurant doesnt save, we want to show the form again
      # render the form page again aka new.html.erb
      render :new, status: :unprocessable_entity # 422
    end
  end

  private

  def restaurant_params
    # for security reasons, we are whitelisting our params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
