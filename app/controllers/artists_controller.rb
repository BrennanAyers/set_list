class ArtistsController < ApplicationController
  def new
  end

  def create
    artist = Artist.new(artist_params)
    artist.save

    redirect_to "/artists/#{artist.id}"
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
