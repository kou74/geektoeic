class Geektoeic < ApplicationRecord
  belongs_to :user 

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy

  has_many :sukis

  mount_uploader :image, ImageUploader

  has_one_attached :picture
end


