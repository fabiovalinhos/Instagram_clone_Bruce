class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  validates :title, presence: true

end
