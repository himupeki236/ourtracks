class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :review
      t.string :artist_profile
	    t.references :artist,          null: false
	    t.references :work,            null: false
	    t.references :user,            null: false
      t.timestamps
      
    end
  end
end
