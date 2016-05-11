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

  	if @anime.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  private

  def anime_params
  	params.require(:anime).permit(:title, :description, :writer)
  end

end
