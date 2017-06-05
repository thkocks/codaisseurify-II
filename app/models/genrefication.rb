class Genrefication < ApplicationRecord
  belongs_to :artist
  belongs_to :album
  belongs_to :song
end
