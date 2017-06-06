class Profile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :bio, presence: true
  validates :image_url
end
