class Expertise < ApplicationRecord
  has_and_belongs_to_many :projects

  validates :name, :fontawesome, presence: true

  def icon_tag
    "<iclass=\"#{fontawesome}\"></i>".html_safe
  end
end
