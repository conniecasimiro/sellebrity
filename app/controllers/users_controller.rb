class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def celebs
    @celebs = Celeb.where(user_id: current_user)
    @bookings = Booking.where(celeb_id: @celebs)
  end

  def bookings
    @bookings = Booking.where(user_id: current_user)
  end

  def decline
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to users_celebs_path, status: :see_other
  end

  def accept
    booking = Booking.find(params[:id])
    booking.accepted = true
    booking.save
    redirect_to users_celebs_path, status: :see_other
  end

  # def edit
  #   @celeb = Celeb.find(params[:id])
  # end

  # def update
  #   @celeb = Celeb.find(params[:id])
  #   @booking.celeb = Booking.update(params[bookings_params])

  #   redirect_to booking_path(@booking)
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
end
