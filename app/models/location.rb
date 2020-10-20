class Location < ApplicationRecord
  has_many :enemies
  has_many :users
   # * Do we need has many users here?
end