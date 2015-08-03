class RestaurantsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to root_path
      flash[:notice] = "#{@restaurant.name} added"
    else
      render :new
    end
  end

  def edit
    @species = Species.find(params[:id])
  end

  def update
    @species = Species.find(params[:id])

    if @species.update(species_params)
      redirect_to species_path(@species.id)
      flash[:notice] = "#{@species.name} updated"
    else
      render :edit
    end
  end

  def index
    if params[:search].present?
      @restaurant = Restaurant.search(params[:search]).page params[:page]
    else
      @restaurant = Restaurant.all.order(:name).page params[:page]
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.order(net_upvote: :desc).page params[:page]
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.destroy
      flash[:notice] = "Restaurant Deleted"
    end

    redirect_to root_path
  end

  protected

  def restaurant_params
    params.require(:species).permit(:name, :location, :image)
  end
end
