class Team < ApplicationRecord
    has_many :trivia_squads
    has_many :players, through: :trivia_squads
    validates :name, :max_member_count, :slogan, :winning_note, :losing_note, presence: true
    validates :name, :slogan, :winning_note, :losing_note, uniqueness: true
    validates :slogan, length: {minimum: 2, maximum: 40}
    validates :winning_note, :losing_note, length: {minimum: 10, maximum: 35}
    validates :max_member_count, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 6}
    validates :recruiting, inclusion: { in: [true, false] }
    validates :recruiting, exclusion: { in: [nil] }

    def self.recruiting_teams
        recruiting_teams = Team.all.select { |team| team.recruiting }
        #byebug
        recruiting_teams
    end

end
