class Artist < ApplicationRecord
  has_many :work
  has_one_attached :image
  with_options presence: true do
    validates :image
    validates :artist_name, length: { maximum: 30 }
  end
  validates :artist_profile,  length: { maximum: 1000 }
end
