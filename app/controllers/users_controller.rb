class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end


  def celebs
    @user = User.find(params[:id])
    @celebs = Celeb.all.where(@user)
   end

  def bookings
    @bookings = Booking.where(user_id: current_user)
  end
end
