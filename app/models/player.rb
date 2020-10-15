class Player < ApplicationRecord
    has_many :trivia_squads
    has_many :teams, through: :trivia_squads
    validates :name, :nickname, :expertise, :catchphrase, presence: true
    validates :nickname, :catchphrase, uniqueness: true
    validates :catchphrase, length: {minimum: 2, maximum: 75}
end
