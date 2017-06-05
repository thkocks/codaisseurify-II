class Album < ApplicationRecord
  has_many :genrefications
  has_many :genres, through: :genrefication

  has_many :artistifications
  has_many :artists, through: :artistifications

  has_many :albumifications
  has_many :songs, through: :albumifications
  has_many :artists, through: :albumifications

  validates :title, :image_url, presence: true
  validates :description, length: {maximum: 500}

  def self.order_by_title
    order(:title)
  end
end
