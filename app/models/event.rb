class Event < ActiveRecord::Base
  validates_presence_of :name, :game_type_id, :location_id, :minimum_number

  belongs_to :location
  belongs_to :game_type
  has_and_belongs_to_many :users

  def self.utc_str_to_local_time(str)
    time = DateTime.parse(str).to_time
    offset = Time.zone.now.utc_offset.seconds
    time -= offset
  end

  def pretty_date
    date_time.strftime('%b %e, %Y')
  end

  def pretty_time
    date_time.strftime('%H:%M %p')
  end
end
