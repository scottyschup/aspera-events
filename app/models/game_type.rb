class GameType < ActiveRecord::Base
  validates :name, presence: true, length: { in: 3..30 }

  has_many :events
end
