class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy
  validates :video, presence: true
  mount_uploader :video, VideoUploader
end
