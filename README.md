# legendary-octo-palm-trees
Create a trivia team, join a trivia team, and randomly generate team member nicknames?

## Team -< TriviaSquad >- Player

### Team
- :name _string_
- :max_member_count _integer_
- :catchphrase _string_

### TriviaSquad
- :team_id _integer FK_
- :player_id _integer FK_
- I thinking about adding category leads or something

### Player
- :name _string_
- :nickname _string_
- :expertise _string_
- #generate_nickname