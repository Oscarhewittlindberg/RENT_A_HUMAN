class BookingsController < ApplicationController

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @actor = Actor.find(params[:actor_id])
    @booking.renter = current_user
    @booking.price = @actor.price * @booking.duration
    @booking.actor = @actor
    if @booking.save
      redirect_to dashboard_path
    else
      render template: 'actors/show'
    end
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :description, :date, :duration)
  end
end
