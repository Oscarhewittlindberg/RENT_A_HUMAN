class DashboardsController < ApplicationController

  def my_dashboard
    @my_actors = current_user.actors
    @my_past_bookings = Booking.where(renter: current_user).where('date < ?', Date.today)
    @my_current_bookings = Booking.where(renter: current_user).where('date >= ?', Date.today)
    @my_actors_past_bookings = Booking.joins(:actor).where(actors: { owner: current_user }).where('date < ?', Date.today)
    @my_actors_current_bookings = Booking.joins(:actor).where(actors: { owner: current_user }).where('date >= ?', Date.today)
  end
end
