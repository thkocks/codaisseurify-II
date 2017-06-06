class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album
  has_many :genres, through: :artist

  validates :name, presence: true
end
