class Album < ApplicationRecord
  has_many :genrefications
  has_many :genres, through: :genrefication

  has_many :artistifications
  has_many :artists, through: :artistifications

  has_many :albumifications
  has_many :songs, through: :albumifications
  has_many :artists, through: :albumifications
end
