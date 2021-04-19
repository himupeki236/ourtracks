class AddStartYearToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :start_year, :integer
  end
end
