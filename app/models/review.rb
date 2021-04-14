class Review < ApplicationRecord
  belongs_to :work
  belongs_to :user
  with_options presence: true do
    validates :title, length: { maximum: 40 }
    #長さの範囲を200-1000文字
    validates :review, length: { in: 200..1000 }
  end
  
end
