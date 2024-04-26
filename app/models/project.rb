class Project < ApplicationRecord
  has_one_attached :cover_photo
  has_one_attached :cover_photo_mobile
  has_many_attached :photos

  has_rich_text :context
  has_rich_text :mission
  has_rich_text :highlight


  validates :name, presence: true
  validates :context, presence: true
  validates :mission, presence: true
  validates :highlight, presence: true
  validates :cover_photo, presence: true
  validates :name, presence: true
end
