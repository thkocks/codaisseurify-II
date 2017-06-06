class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy
  has_many :songs, dependent: :destroy
  has_and_belongs_to_many :genres

  validates :name, presence: true, uniqueness: true
  validates :country, :start_year, presence: true
  validate :stop_year, :stop_after_start?
end
