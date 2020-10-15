# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require "faker"

15.times do
    Player.create(name: Faker::FunnyName.unique.name, nickname: Faker::Science.unique.scientist, expertise: Faker::Educator.subject , catchphrase: Faker::Hacker.unique.say_something_smart)
end

10.times do
    Team.create(
        name: Faker::Kpop.unique.i_groups,
        max_member_count: rand(1..6),
        slogan: Faker::Quote.unique.famous_last_words,
        winning_note: Faker::Quote.unique.robin,
        losing_note: Faker::Quote.unique.singular_siegler,
        trivia_nights_won: rand(0..3),
        recruiting: [true, true, true, true, false].sample
    )
end

15.times do
    TriviaSquad.create(team_id: Team.recruiting_teams.sample.id, player_id: Player.all.sample.id)
end