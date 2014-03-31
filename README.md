# Outrageous

Outrageous is a ruby wrapper in the form of a outrageous gem for the official [League of Legends API](https://developer.riotgames.com/).

![Gems are truly, truly, truly outrageous...](http://x1.fjcdn.com/comments/4256386+_35ff0c0c528c84aacf20464730f61b4f.jpg "Gems are truly, truly, truly outrageous...")

This library doesn't actually know anything about the League of Legends API. Instead it relies on users to read the League of Legends API Documentation and builds Ruby data structures (i.e. nested Hash and Array combos). The transformation is quite simple; once you understand how the mapping works any League of Legends API request can easily be written as a Ruby data structure.

## Installation and usage

As usual, you know, don't you? Just type in your console

```bash
	gem install outrageous
```
or place it in your Gemfile

```ruby
	gem 'outrageous'
```
Grab yout API key from [here](https://developer.riotgames.com/) and now you are ready to use your Ruby for vigor. Example usage:

```ruby
	client = Outrageous::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key', region: 'euw')
	response = client.all(freeToPlay: true)
	response['champions'] 
```

## API calls

### champion-v1.1 [BR, EUNE, EUW, LAN, LAS, NA, OCE]
	
```ruby
# GET /api/lol/{region}/v1.1/champion
Outrageous::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all(champData: 'all', locale: 'es_ES')
``` 

### game-v1.3 [BR, EUNE, EUW, LAN, LAS, NA, OCE]

```ruby
# GET /api/lol/{region}/v1.3/game/by-summoner/{summonerId}/recent
Outrageous::Game.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find summoner_id
```

## league-v2.3 [BR, EUNE, EUW, LAN, LAS, NA, OCE, RU, TR] Show/Hide List OperationsExpand Operations

```ruby
# GET /api/lol/{region}/v2.3/league/by-summoner/{summonerId} Retrieves leagues data for summoner, including summoner's teams. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageously-api-key').get_leagues_with_team_by_summoner_id(summoner_id)

# GET /api/lol/{region}/v2.3/league/by-summoner/{summonerId}/entry Retrieves leagues entry data for summoner, including summoner's teams. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageously-api-key').get_leagues_by_summoner_id(summoner_id)

# GET /api/lol/{region}/v2.3/league/by-team/{teamId} Retrieves leagues data for team. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageously-api-key').get_leagues_by_team_id(team_id)

# GET /api/lol/{region}/v2.3/league/by-team/{teamId}/entry Retrieves leagues entry data for team. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageously-api-key').get_leagues_entry_by_team_id(team_id)

# GET /api/lol/{region}/v2.3/league/challenger Retrieves challenger tier leagues. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageously-api-key').get_challenger_info(type)d

```

### lol-static-data-v1 [BR, EUNE, EUW, KR, LAN, LAS, NA, OCE, RU, TR] Show/Hide List OperationsExpand Operations

Usually the methods are ```all(options = {})``` or ```find(id, options = {})```. Options hash is fully optional (REAAAAAALLYYY???).

```ruby
# GET /api/lol/static-data/{region}/v1/champion Retrieves champion list. (REST)
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all(champData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/champion/{id} Retrieves a champion by its id. (REST)
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(champion_id, champData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/item Retrieves item list. (REST)
Outrageous::StaticData::Item.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all(itemData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/item/{id} Retrieves item by its unique id. (REST)
Outrageous::StaticData::Item.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(item_id, itemData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/mastery Retrieves mastery list. (REST)
Outrageous::StaticData::Mastery.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all(masteryListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/mastery/{id} Retrieves mastery item by its unique id. (REST)
Outrageous::StaticData::Mastery.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id, masteryListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/realm Retrieve realm data. (REST)
Outrageous::StaticData::Realm.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all

# GET /api/lol/static-data/{region}/v1/rune Retrieves rune list. (REST)
Outrageous::StaticData::Rune.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all(runeListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/rune/{id} Retrieves rune by its unique id. (REST)
Outrageous::StaticData::Rune.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(rune_id, runeListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/summoner-spell Retrieves summoner spell list. (REST)
Outrageous::StaticData::SummonerSpell.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all(spellData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/summoner-spell/{id} Retrieves summoner spell by its unique id. (REST)
Outrageous::StaticData::SummonerSpell.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_spell_id, spellData: 'all', locale: 'es_ES')
```
## Contributing to Outrageous
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 xxswingxx. See LICENSE.txt for
further details.
