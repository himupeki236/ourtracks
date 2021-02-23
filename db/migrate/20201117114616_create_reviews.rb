class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :review
      t.string :artist_profile
	    t.integer :artist_id
	    t.integer :work_id
	    t.integer :user_id
      t.timestamps
    end
  end
end
