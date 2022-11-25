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

  def edit
    @celeb = Celeb.find(params[:id])
  end

  def update
    @celeb = Celeb.find(params[:id])
    @booking.celeb = Booking.update(params[bookings_params])

    redirect_to booking_path(@booking)
  end

  def destroy
    # @booking = Celeb.find(params[:id])
    # @booking.celeb.destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to mybookings_path, status: :see_other
  end

  private

  def bookings_params
    params.require(:booking).permit(:booking_date, :accepted, :duration, :description)
  end
end
