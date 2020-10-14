class TriviaSquad < ApplicationRecord
    belongs_to :team
    belongs_to :player
    validates :team_id, :player_id, presence: true
end
