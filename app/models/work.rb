class Work < ApplicationRecord
  belongs_to :artist
  has_many :review
  has_one_attached :photo

  with_options presence: true do
    validates :photo
    validates :name, length: { maximum: 30 }
    validates :release_no,  length: { maximum: 25 }
    validates :release_date
    validates :m1, length: { maximum: 30 }
  end
  validates :m2, length: { maximum: 30 }
  validates :m3, length: { maximum: 30 }
  validates :m4, length: { maximum: 30 }
  validates :m5, length: { maximum: 30 }
  validates :m6, length: { maximum: 30 }
  validates :m7, length: { maximum: 30 }
  validates :m8, length: { maximum: 30 }
  validates :m9, length: { maximum: 30 }
  validates :m10, length: { maximum: 30 }
  validates :m11, length: { maximum: 30 }
  validates :m12, length: { maximum: 30 }
  validates :m13, length: { maximum: 30 }
  validates :m14, length: { maximum: 30 }
  validates :m15, length: { maximum: 30 }
  validates :m16, length: { maximum: 30 }
  validates :m17, length: { maximum: 30 }
  validates :m18, length: { maximum: 30 }
  validates :m19, length: { maximum: 30 }
  validates :m20, length: { maximum: 30 }
end
