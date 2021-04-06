class ReviewsController < ApplicationController
  # パラメータと一致するidのレコードを取得
  # before_action :set_review, only: [:index]

  def index
  # @reviews = Review.where("work_id = ?", params[:work_id])
    @work = Work.find(params[:work_id])
    @reviews = Review.where("work_id = ?", params[:work_id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @work = Work.find(params[:work_id])
    @review = Review.new
    # @review = Review.find(params[:artist_id], params[:work_id])
  end

  def create
    # 何を新しく保存するか指定
    @review = Review.new(review_params)  
    # もし保存ができたらindexに遷移
    if @review.save
      redirect_to action: :index
    # できなければnewに遷移
    else
      render :new
    end
  end

  private

  # 登録するカラムを制御をする
  def review_params
    params.require(:review).permit(:title, :review).merge(work_id: params[:work_id], artist_id: params[:artist_id])
  end

  # def set_review
  #   # パラメータと一致するidのレコードを取得
  #   wwork_id = Work.find(params[:work_id])
  # end

end
