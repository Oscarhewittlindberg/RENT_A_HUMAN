class DashboardsController < ApplicationController
  def my_dashboard
    @my_actors = current_user.actors
    @my_bookings = Booking.where(renter: current_user)
    @my_actors_bookings = Booking.joins(:actor).where(actors: { owner: user })
  end
end
