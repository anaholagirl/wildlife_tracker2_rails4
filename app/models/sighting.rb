class Sighting < ActiveRecord::Base
  validates :latitude, :presence => true
end
