class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def celebs
    # @user = User.find(params[:id])
    @celebs = Celeb.where(user_id: current_user)
    @bookings = Booking.where(celeb_id: @celebs)
  end

  def bookings
    @bookings = Booking.where(user_id: current_user)
  end

  def decline
  end

  def accept
  end
end
