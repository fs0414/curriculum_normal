class Board < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user

  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }
=======
  validates :title, presence: true, length: { maximum: 255 }
  validates :body,  presence: true, length: { maximum: 655_35 }

  belongs_to :user
>>>>>>> master
end
