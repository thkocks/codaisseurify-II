class Song < ApplicationRecord
  has_many :genrefications
  has_many :genres, through: :genrefication

  has_many :artistifications
  has_many :artists, through: :artistifications

  has_many :albumifications
  has_many :albums, through: :albumifications

  validates :title, :image_url, presence: true
  validates :description, length: {maximum: 500}

  def self.order_by_title
    order(:title)
  end

  def self.order_by_track_number
    order(:track_number)
  end
end
