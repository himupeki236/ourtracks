class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :name_kana
      t.text :profile
      t.text :genre
      t.integer :start_year
      t.integer :end_year
      t.timestamps
    end
  end
end
