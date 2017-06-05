class Song < ApplicationRecord
  has_many :genrefications
  has_many :genres, through: :genrefication

  has_many :artistifications
  has_many :artists, through: :artistifications

  has_many :albumifications
  has_many :albums, through: :albumifications
end
