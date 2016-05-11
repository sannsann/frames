class AnimesController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@anime = Anime.new
  end

  def create
  	@anime = Anime.new(anime_params)
  end

  private

  def anime_params
  	params.require(:play).permit(:title, :description, :writer)
  end

end
