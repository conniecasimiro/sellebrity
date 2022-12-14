require 'open-uri'

class CelebsController < ApplicationController
  def index
    @celebs = Celeb.all
    if params["search"].present?
      @celebs = Celeb.search_by_name_and_service(params["search"]["query"])
    end
  end

  def index2
    @celebs = Celeb.all
  end

  def index3
    @celebs = Celeb.all
  end

  def show
    @celeb = Celeb.find(params[:id])
    # @instagram = URI.open(@celeb.instagram_url).read
    # @suggestions = Celeb.where(service: @celeb.service)
    # raise
    @suggestions = []
    @celeb.service.split(",").each do |word|
      @suggestions << Celeb.search_service(word.gsub("and", "").strip.capitalize)
    end
  end

  def new
    @celeb = Celeb.new
  end

  def create
    @celeb = Celeb.new(celeb_params)
    @celeb.user = current_user
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

  def destroy
    @celeb = Celeb.find(params[:id])
    @celeb.destroy
    redirect_to users_celebs_path, status: :see_other
  end

  private

  def celeb_params
    params.require(:celeb).permit(:first_name, :last_name, :service, :bio, :photo_url, :price, :instagram_url)
  end
end
