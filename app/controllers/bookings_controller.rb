class BookingController < ApplicationsController
  def new
    @booking = Booking.new
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.actor = Actor.find(params[:actor_id])
    if @booking.save
      redirect_to edit_booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :description, :date, :duration, :image)
  end
end
