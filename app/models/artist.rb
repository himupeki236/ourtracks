class Artist < ApplicationRecord
  has_many :works
  has_one_attached :image
  with_options presence: true do
    validates :image
    validates :name, length: { maximum: 30 }
    validates :genre
    validates :start_year, numericality: { only_integer: true }, length: { is: 4 }
  end
  validates :profile,  length: { maximum: 1000 }
  # 空文字を許可
  validates :end_year, numericality: { only_integer: true }, length: { is: 4 }, allow_blank: true
end
