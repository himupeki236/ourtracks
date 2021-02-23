class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.text :artist_image
      t.string :artist_profile
      t.timestamps
    end
  end
end
