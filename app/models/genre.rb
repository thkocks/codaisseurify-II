class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :genrefications
  has_many :albums, through: :genrefication
  has_many :artists, through: :genrefication
end
