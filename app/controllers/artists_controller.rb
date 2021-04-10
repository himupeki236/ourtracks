class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def search
    if params[:artist_name].present?
      @asearch_rtists = Artist.where('artist_name LIKE ?', "%#{params[:artist_name]}%")
    else
      @asearch_rtists = Artist.none
    end
  end

end
