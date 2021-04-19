class AddEndYearToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :end_year, :integer
  end
end
