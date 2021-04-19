class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def search
    if params[:name].present?
      @asearch_artists = Artist.where('name LIKE ?', "%#{params[:name]}%")
    else
      @asearch_artists = Artist.none
    end
  end

  def genre
    if params[:genre].present?
      @genres = Artist.where('genre LIKE ?', "%#{params[:genre]}%")
    else
      @genres = Artist.none
    end
  end

  def year
    if params[:start_year].present?
      # start_yearカラムとend_yearカラムがparams（start_year）からparams（end_year）の範囲のものを取得
      @years = Artist.where(start_year: params[:start_year]..params[:end_year]).or(Artist.where(end_year: params[:start_year]..params[:end_year]))
    else
      @years = Artist.none
    end
  end


  def new
    @artist = Artist.new
  end

  def create
    # 何を新しく保存するか指定
    @artist = Artist.new(artist_params)  
    # binding.pry
    # もし保存ができたらindexに遷移
    if @artist.save
      # binding.pry
      redirect_to action: :index
    # できなければnewに遷移
    else
      # binding.pry
      render action: :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:image, :name, :profile, :start_year, :end_year, genre:[])
  end

end
