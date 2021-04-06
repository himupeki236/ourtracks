class Work < ApplicationRecord
  belongs_to :artist
  has_many :review
end
