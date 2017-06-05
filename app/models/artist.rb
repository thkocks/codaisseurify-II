class Artist < ApplicationRecord
  has_many :genrefications
  has_many :genres, through: :genrefication

  has_many :artistifications
  has_many :songs, through: :artistifications
  has_many :albums, through: :artistifications

  has_many :albumifications
  has_many :albums, through: :albumifications

  validates :name, :image_url, presence: true
  validates :bio, length: {maximum: 500}

  def self.order_by_name
    order(:name)
  end
end
