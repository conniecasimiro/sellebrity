class BookingsController < ApplicationController
  def index
    @celeb = Celeb.find(params[:celeb_id])
    @bookings = Booking.where(celeb_id: @celeb.id)
  end

  def new

  end

  def create

  end

  private

  def bookings_params

  end
end
