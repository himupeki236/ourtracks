class Artist < ApplicationRecord
  has_many :work
  has_one_attached :image
  with_options presence: true do
    validates :image
    validates :name, length: { maximum: 30 }
  end
  validates :profile,  length: { maximum: 1000 }
end
