class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy
  has_many :songs, dependent: :destroy
  has_and_belongs_to_many :genres

  validates :name, presence: true, uniqueness: true
end
