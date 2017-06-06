class Genre < ApplicationRecord
  has_and_belongs_to_many :artists
  has_many :albums, through: :artists
  has_many :songs, through: :artists

  validates :name, presence: true, uniqueness: true
end
