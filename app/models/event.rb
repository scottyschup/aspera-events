class Event < ActiveRecord::Base
  belongs_to :location
  belongs_to :game_type
  has_and_belongs_to_many :users

  def pretty_date
    date_time.strftime('%b %e, %Y')
  end

  def pretty_time
    date_time.strftime('%H:%M %p')
  end
end
