class ChangeDatatypereleaseDateOfworks < ActiveRecord::Migration[6.0]
  def change
    change_column :works, :release_date, :date
  end
end
