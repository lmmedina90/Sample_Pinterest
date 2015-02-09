class Pin < ActiveRecord::Base
  validates :name, :presence => true
  # validates :image, :presence => true
  validates :user, :presence => true
  validates :board, :presence => true

  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :board
end