class BookingsController < ApplicationController
  def index
    @celeb = Celeb.find(params[:celeb_id])
    @bookings = Booking.where(celeb_id: @celeb.id)
    # if @bookings.empty?
    #   redirect_to booking_path(@bookings)
    # else
    #   @bookings
    # end
  end

  def new
    @celeb = Celeb.find(params[:celeb_id])
    @booking = Booking.new
  end

  def create
    @celeb = Celeb.find(params[:celeb_id])
    @booking = Booking.new(bookings_params)
    @booking.celeb = @celeb
    @booking.user = current_user
    @booking.save!
    if @booking.save
      redirect_to celeb_path(@celeb)
    else
      render "celebs/show", status: :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:booking_date, :accepted, :duration, :description)
  end
end
