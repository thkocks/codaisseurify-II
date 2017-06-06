class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy
  has_many :genres, through: :artist

  validates :name, :released, presence: true
end
