class Work < ApplicationRecord
  belongs_to :artist
  has_many :work
end
