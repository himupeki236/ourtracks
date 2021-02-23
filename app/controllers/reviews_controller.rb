class ReviewsController < ApplicationController
  def index
  @reviews = Review.where("work_id = ?", params[:work_id])
  @work = Work.find(params[:work_id])
  # @works = Works.all
  # @work = Work.find(params[:work_id])
  end
end
