module Outrageous

  class Game < Base

  	def find(summoner_id, options = {})
      get("/api/lol/#{region}/#{version || GAME_VERSION}/game/by-summoner/#{summoner_id}/recent", options)
    end
  end
end