# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  date_time      :datetime         not null
#  minimum_number :integer          default(1), not null
#  location_id    :integer          not null
#  game_type_id   :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

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
