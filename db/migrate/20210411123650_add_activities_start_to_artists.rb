class AddActivitiesStartToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :activities_start, :date
  end
end
