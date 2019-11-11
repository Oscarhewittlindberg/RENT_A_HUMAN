class BookingController < ApplicationController
  def new
    @booking = Booking.new
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
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
end
