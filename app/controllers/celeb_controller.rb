class CelebController < ApplicationController
  def index
    @celebs = Celeb.all
  end

  def edit
    @celeb = Celeb.find(params[:id])
  end

  def new
    @celeb = Celeb.new
  end

  def create
    @celeb = Celeb.new(celebs_params)
    @celeb.save
    redirect_to celebs_path(@celebs)
  end

  def update
    @celeb = Celeb.find(params[:id])
    @celeb.update(celebs_params)
    redirect_to celeb_path(@celebs)
  end

  private

  def celebs_params
    params.require(:celeb).permit(:first_name, :last_name, :service, :bio, :photo_url, :price)
  end
end
