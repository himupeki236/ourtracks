class ReviewsController < ApplicationController
  # 登録するためのパラメータの用意
  # ネストしているためnewのパラメータを再び用意（エラーメッセージを表示するため@reviewはそのまま）
  before_action :set_new_params, only: [:new, :create]
  # カレントユーザー取得
  before_action :authenticate_user!, only: [:new, :create]
  # ログインしているか判定
  before_action :login_check, only: [:new]
  # 更新するためのパラメータの用意
  before_action :set_edit_params, only: [:edit, :update]

  def index
  # @reviews = Review.where("work_id = ?", params[:work_id])
    @work = Work.find(params[:work_id])
    @reviews = Review.where("work_id = ?", params[:work_id])
    @artist = Artist.find(params[:artist_id])
  end

  def new
    # 登録するためReviewのオブジェクトを空で用意
    @review = Review.new
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
      # binding.pry
      render action: :new
    end
  end

  def edit

  end

  def update
     # もし保存ができたらindexに遷移
    if @review.update(review_params)  
      redirect_to action: :index
    # できなければeditに遷移
    else
      # binding.pry
      render action: :edit
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

  def set_edit_params
    @artist = Artist.find(params[:artist_id])
    @work = Work.find(params[:work_id])
    @review = Review.find(params[:id])
  end

  def login_check
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

end
