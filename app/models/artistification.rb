class Artistification < ApplicationRecord
  belongs_to :album
  belongs_to :song
end
