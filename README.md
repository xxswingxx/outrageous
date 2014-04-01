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
	# region is optional, by default it uses 'euw'
	client = Outrageous::Champion.new(api_key: 'your-truly-truly-truly-outrageous-api-key', region: 'euw')
	client.all(freeToPlay: true)
	client.response # => Hash
	client.status # => 200, 401, 404 ... 
```

## API calls

### champion-v1.1 [BR, EUNE, EUW, LAN, LAS, NA, OCE]
	
```ruby
# GET /api/lol/{region}/v1.1/champion
Outrageous::Champion.new(api_key: 'your-truly-truly-truly-outrageous-api-key').all(champData: 'all', locale: 'es_ES')
``` 

### game-v1.3 [BR, EUNE, EUW, LAN, LAS, NA, OCE]

```ruby
# GET /api/lol/{region}/v1.3/game/by-summoner/{summonerId}/recent
Outrageous::Game.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find(summoner_id)
```

## league-v2.3 [BR, EUNE, EUW, LAN, LAS, NA, OCE, RU, TR]

```ruby
# GET /api/lol/{region}/v2.3/league/by-summoner/{summonerId} Retrieves leagues data for summoner, including summoner's teams. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageous-api-key').get_leagues_with_team_by_summoner_id(summoner_id)

# GET /api/lol/{region}/v2.3/league/by-summoner/{summonerId}/entry Retrieves leagues entry data for summoner, including summoner's teams. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageous-api-key').get_leagues_by_summoner_id(summoner_id)

# GET /api/lol/{region}/v2.3/league/by-team/{teamId} Retrieves leagues data for team. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageous-api-key').get_leagues_by_team_id(team_id)

# GET /api/lol/{region}/v2.3/league/by-team/{teamId}/entry Retrieves leagues entry data for team. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageous-api-key').get_leagues_entry_by_team_id(team_id)

# GET /api/lol/{region}/v2.3/league/challenger Retrieves challenger tier leagues. (REST)
Outrageous::League.new(api_key: 'your-truly-truly-truly-outrageous-api-key').get_challenger_info(type: RANKED_SOLO_5_X_5')

```

### lol-static-data-v1 [BR, EUNE, EUW, KR, LAN, LAS, NA, OCE, RU, TR]

Usually the methods are ```all(options = {})``` or ```find(id, options = {})```. Options hash is fully optional (REAAAAAALLYYY???).

```ruby
# GET /api/lol/static-data/{region}/v1/champion Retrieves champion list. (REST)
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageous-api-key').all(champData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/champion/{id} Retrieves a champion by its id. (REST)
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find(champion_id, champData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/item Retrieves item list. (REST)
Outrageous::StaticData::Item.new(api_key: 'your-truly-truly-truly-outrageous-api-key').all(itemData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/item/{id} Retrieves item by its unique id. (REST)
Outrageous::StaticData::Item.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find(item_id, itemData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/mastery Retrieves mastery list. (REST)
Outrageous::StaticData::Mastery.new(api_key: 'your-truly-truly-truly-outrageous-api-key').all(masteryListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/mastery/{id} Retrieves mastery item by its unique id. (REST)
Outrageous::StaticData::Mastery.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find(summoner_id, masteryListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/realm Retrieve realm data. (REST)
Outrageous::StaticData::Realm.new(api_key: 'your-truly-truly-truly-outrageous-api-key').all

# GET /api/lol/static-data/{region}/v1/rune Retrieves rune list. (REST)
Outrageous::StaticData::Rune.new(api_key: 'your-truly-truly-truly-outrageous-api-key').all(runeListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/rune/{id} Retrieves rune by its unique id. (REST)
Outrageous::StaticData::Rune.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find(rune_id, runeListData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/summoner-spell Retrieves summoner spell list. (REST)
Outrageous::StaticData::SummonerSpell.new(api_key: 'your-truly-truly-truly-outrageous-api-key').all(spellData: 'all', locale: 'es_ES')

# GET /api/lol/static-data/{region}/v1/summoner-spell/{id} Retrieves summoner spell by its unique id. (REST)
Outrageous::StaticData::SummonerSpell.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find(summoner_spell_id, spellData: 'all', locale: 'es_ES')
```

### stats-v1.2 [BR, EUNE, EUW, LAN, LAS, NA, OCE]

```ruby
# GET /api/lol/{region}/v1.2/stats/by-summoner/{summonerId}/ranked Get ranked stats by summoner ID. Includes statistics for Twisted Treeline and Summoner's Rift. (REST)
Outrageous::Stats.new(api_key: 'your-truly-truly-truly-outrageous-api-key').player_ranked_by_season(summoner_id, season)

# GET /api/lol/{region}/v1.2/stats/by-summoner/{summonerId}/summary Get player stats summaries by summoner ID. One summary is returned per queue type. (REST)
Outrageous::Stats.new(api_key: 'your-truly-truly-truly-outrageous-api-key').player_summary_by_season(summoner_id, season)

```

### summoner-v1.3 [BR, EUNE, EUW, LAN, LAS, NA, OCE]

Pleas keep in mind that the api limits 40 elements per request.

```ruby
# GET /api/lol/{region}/v1.3/summoner/by-name/{summonerNames} Get summoner objects mapped by standardized summoner name for a given list of summoner names or standardized summoner names (REST)
Outrageous::Summoner.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find_by_names([summoner_name1, summoner_name2, ...])

# GET /api/lol/{region}/v1.3/summoner/{summonerIds} Get summoner objects mapped by summoner ID for a given list of summoner IDs (REST)
Outrageous::Summoner.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find_by_ids([summoner_id1, summoner_id2, ...])   

# GET /api/lol/{region}/v1.3/summoner/{summonerIds}/masteries Get mastery pages mapped by summoner ID for a given list of summoner IDs (REST)
Outrageous::Summoner.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find_masteries([summoner_id1, summoner_id2, ...]) 

# GET /api/lol/{region}/v1.3/summoner/{summonerIds}/name Get summoner names mapped by summoner ID for a given list of summoner IDs (REST)
Outrageous::Summoner.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find_names([summoner_id1, summoner_id2, ...]) 

# GET /api/lol/{region}/v1.3/summoner/{summonerIds}/runes Get rune pages mapped by summoner ID for a given list of summoner IDs (REST)
Outrageous::Summoner.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find_runes([summoner_id1, summoner_id2, ...]) 
```

### team-v2.2 [BR, EUNE, EUW, LAN, LAS, NA, OCE, RU, TR]

```ruby
# GET /api/lol/{region}/v2.2/team/by-summoner/{summonerId} Retrieves teams for given summoner ID. (REST)
Outrageous::Team.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find_by_summoner_id(summoner_id)

# GET /api/lol/{region}/v2.2/team/{teamIds} Get teams mapped by team ID for a given list of team IDs. (REST)
Outrageous::Team.new(api_key: 'your-truly-truly-truly-outrageous-api-key').find_by_ids([team_id1, team_id2, ...])
```

## F.A.Q

* **_The API version has changed, you haven't updated the gem, what now?_** By default, Outrageous loads the last API version. If you need to change it, pass the attribute ```version: 'vX.X'``` when initializing.
* **_Why initialize an object with each request?_** I just wanted this gem to be multiuser, so it doesn't has to been globally initialized.
* **_Responses in a hash looks ugly to me, why don't instantiate a ruby object?_** Maybe because I'm a bit lazy. Nah, just kidding (not really), I've been using several APIs and I really think that this system takes less maintainace and prevents the gem from being broken when the api is updated.
* **_How do I access/find the attribute X from the Y resource? What options can I pass to the Z method? ANSWER OR DIE FAGGOT_** Please, read the API official [documentation](https://developer.riotgames.com/api/methods), you probably have more knowledge about the API than me.

## Final comments

And thats's all, play with this outrageous gem, break it and remember:

> THEY CAN'T SAY NO WHEN THEY ARE STUNNED.

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

