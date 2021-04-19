class AddCheckboxToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :checkbox, :boolean
  end
end
