class Project < ApplicationRecord
  has_one_attached :cover_photo
  has_one_attached :main_thumbnail
  has_one_attached :mobile_thumbnail
  has_many_attached :photos

  validates :name, presence: true
  validates :cover_photo, presence: true
  validates :main_thumbnail, presence: true
  validates :name, presence: true
end
