# Trivia Squad Pro
Create and join trivia squads.

## Setup
1. Clone the repository to your local machine
2. Run `bundle install`
3. Start the Server with `rails s`
4. In your browser navigate to http://localhost:3000/teams

### Domain
Team -< TriviaSquad >- Player

### Schema
 Team
- :name _string_
- :max_member_count _integer_
- :slogan _string_
- :winning_note _string_
- :losing_note _string_
- :trivia_nights_won _integer_
- :recruiting _boolean_

TriviaSquad
- :team_id _integer FK_
- :player_id _integer FK_

Player
- :name _string_
- :nickname _string_
- :expertise _string_
- :catchphrase _string_

### STILL NEEDS
- Making a team requires a player?
- Delete players from squads