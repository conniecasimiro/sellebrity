class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @featured = Celeb.all.sample(4)
  end
end
