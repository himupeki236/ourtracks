class WorksController < ApplicationController
  def index
    @artist_id = params[:artist_id]
    @works = Work.where("artist_id = ?", params[:artist_id])
  end
end
