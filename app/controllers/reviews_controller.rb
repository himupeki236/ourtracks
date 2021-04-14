class ReviewsController < ApplicationController
  # パラメータと一致するidのレコードを取得
  # before_action :set_review, only: [:index]
  # カレントユーザー取得
  before_action :authenticate_user!, only: [:new, :create]

  def index
  # @reviews = Review.where("work_id = ?", params[:work_id])
    @work = Work.find(params[:work_id])
    @reviews = Review.where("work_id = ?", params[:work_id])
  end

  def new
    # ログインしているか判定
    login_check
    # 登録するためのパラメータの用意
    set_new_params
    # 登録するためReviewのオブジェクトを空で用意
    @review = Review.new
    # @artist = Artist.find(params[:artist_id])
    # @work = Work.find(params[:work_id])
    # @review = Review.new
    # @review = Review.find(params[:artist_id], params[:work_id])
  end

  def create
    # 何を新しく保存するか指定
    @review = Review.new(review_params)  
    # binding.pry
    # もし保存ができたらindexに遷移
    if @review.save
      redirect_to action: :index
    # できなければnewに遷移
    else
      # ネストしているためnewのパラメータを再び用意（エラーメッセージを表示するため@reviewはそのまま）
      set_new_params
      # binding.pry
      render action: :new
    end
  end

  private

  # 登録するカラムを制御をする
  def review_params
    params.require(:review).permit(:title, :review).merge(work_id: params[:work_id], artist_id: params[:artist_id], user_id: current_user.id)
  end

  def set_new_params
    @artist = Artist.find(params[:artist_id])
    @work = Work.find(params[:work_id])
    
  end

  def login_check
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

end
