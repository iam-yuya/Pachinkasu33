class Post < ApplicationRecord

  belongs_to :end_users

  validates :content, presence: true

  has_one_attached :image

  def get__image
    (image.attached?) ? image : 'no_image.jpg'
  end
end
