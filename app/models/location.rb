class Location < ActiveRecord::Base
  validates_presence_of :name
  
  has_many :events
end
