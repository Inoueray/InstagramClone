class Picture < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140 }
  validates :image, presence: true

  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

end
