class PagesController < ApplicationController
  def home
    @featured = Celeb.all.sample(4)
  end
end
