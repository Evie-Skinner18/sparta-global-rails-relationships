class User < ApplicationRecord
  has_many :cheeses
  has_many :preferences, :through => :cheeses
end
