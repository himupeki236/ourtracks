class WorksController < ApplicationController
  # アーティストidを取得
  before_action :set_params, only: [:index, :new, :create]

  def index
    @works = Work.where("artist_id = ?", params[:artist_id]).all.order(release_date: "DESC")
  end

  def new
    @work = Work.new
  end

  def create
    # 何を新しく保存するか指定
    @work = Work.new(work_params)  
    # binding.pry
    # もし保存ができたらindexに遷移
    
    if @work.save
      redirect_to action: :index
    # できなければnewに遷移
    else
      
      render action: :new
    end
  end

  private

  def work_params
    params.require(:work).permit(:photo, :name, :release_no, :release_date, :m1, :m2, :m3, :m4, :m5, :m6, :m7, :m8, :m9, :m10, :m11, :m12, :m13, :m14, :m15, :m16, :m17, :m18, :m19, :m20).merge(artist_id: params[:artist_id])
  end

  def set_params
    @artist_id = params[:artist_id]
    @artist = Artist.find(params[:artist_id])
  end



end

