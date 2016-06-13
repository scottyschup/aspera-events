class GameType < ActiveRecord::Base
  has_many :events
end
