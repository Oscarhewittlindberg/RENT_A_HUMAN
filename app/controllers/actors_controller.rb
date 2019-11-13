class ActorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_actor, only: [:show, :edit, :update, :destroy]

  def index
    @actors = Actor.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @actor = Actor.new
  end

  def edit
  end

  def create
    @actor = Actor.new(actor_params)
    @actor.owner = current_user
    if @actor.save
      redirect_to actor_path(@actor)
    else
      render :new
    end
  end

  def update
    @actor.update(actor_params)

    redirect_to actor_path(@actor)
  end

  def destroy
    @actor.destroy

    redirect_to actors_path
  end

  private
  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:name, :age, :sex, :location, :bio, :price, :category, :image)
  end
end
