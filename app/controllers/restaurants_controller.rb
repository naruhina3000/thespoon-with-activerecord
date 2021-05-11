class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    def index
        @restaurants = Restaurant.all
    end

    def show
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.save
        redirect_to root_path
    end

    def edit
    end

    def update
        @restaurant.update(restaurant_params)
        # redirect_to restaurant_path(@restaurant)
        redirect_to @restaurant
    end

    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect_to root_path
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :rating)
        # whitelisting data that we really want to have
    end
end
