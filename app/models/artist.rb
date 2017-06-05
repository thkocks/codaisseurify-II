class Artist < ApplicationRecord
  has_many :genrefications
  has_many :genres, through: :genrefication

  has_many :artistifications
  has_many :songs, through: :artistifications
  has_many :albums, through: :artistifications
end
