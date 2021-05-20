class Board < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :body,  presence: true, length: { maximum: 655_35 }

  belongs_to :user
end
