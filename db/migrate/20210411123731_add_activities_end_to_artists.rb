class AddActivitiesEndToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :activities_end, :date
  end
end
