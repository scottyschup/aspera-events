# == Schema Information
#
# Table name: game_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GameType < ActiveRecord::Base
  validates :name, presence: true, length: { in: 3..30 }

  has_many :events
end
