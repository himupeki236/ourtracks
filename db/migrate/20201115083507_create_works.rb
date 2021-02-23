class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :name
      t.string :image
      t.string :release_no
      t.string :release_date
      t.string :m1
      t.string :m2
      t.string :m3
      t.string :m4
      t.string :m5
      t.string :m6
      t.string :m7
      t.string :m8
      t.string :m9
      t.string :m10
      t.string :m11
      t.string :m12
      t.string :m13
      t.string :m14
      t.string :m15
      t.string :m16
      t.string :m17
      t.string :m18
      t.string :m19
      t.string :m20
      t.text :gaiyo
      t.integer :artist_id
      t.timestamps
    end
  end
end
