class ArtistController < ApplicationController
  def new
  end

  def create
    artist = Artist.new(artist_params)
    artist.save
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
