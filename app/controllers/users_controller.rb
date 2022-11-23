class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def celebs
    @user = User.find(params[:id])
    @celebs = Celeb.all.where(@user)
  end
end
