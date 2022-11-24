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
    redirect_to users_celebs_path, status: :see_other
  end
end
