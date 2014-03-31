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
Outrageous::Game.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id, champData: 'all', locale: 'es_ES')
```

### lol-static-data-v1 [BR, EUNE, EUW, KR, LAN, LAS, NA, OCE, RU, TR] Show/Hide List OperationsExpand Operations


```ruby
# GET /api/lol/static-data/{region}/v1/champion
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all

# GET /api/lol/static-data/{region}/v1/champion/{id}
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/item
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').all

# GET /api/lol/static-data/{region}/v1/item/{id}
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/mastery
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/mastery/{id}
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/realm
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/rune
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/rune/{id}
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/summoner-spell
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)

# GET /api/lol/static-data/{region}/v1/summoner-spell/{id}
Outrageous::StaticData::Champion.new(api_key: 'your-truly-truly-truly-outrageously-api-key').find(summoner_id)
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

