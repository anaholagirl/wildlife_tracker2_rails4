class Sighting < ActiveRecord::Base
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :animal_id, :presence => true
  validates :region_id, :presence => true
end
