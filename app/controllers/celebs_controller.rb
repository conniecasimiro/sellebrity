class CelebsController < ApplicationController
  def index
    @celebs = Celeb.all
  end

  def show
    @celeb = Celeb.find(params[:id])
  end

  def new
    @celeb = Celeb.new
  end

  def create
    @celeb = Celeb.new(celeb_params)
    if @celeb.save
      redirect_to celeb_path(@celeb)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @celeb = Celeb.find(params[:id])
    @celeb.update(celebs_params)
    redirect_to celeb_path(@celebs)
  end

  # def destroy
  #   @celeb = Celeb.find(params[:id])
  #   @celeb.destroy
  #   redirect_to celebs_path, status: :see_other
  # end

  private

  def celeb_params
    params.require(:celeb).permit(:first_name, :last_name, :service, :bio, :photo_url, :price)
  end
end
