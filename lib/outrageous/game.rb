module Outrageous

  class Game < Base

  	def find(summoner_id)
      respond self.class.get("/api/lol/#{region}/#{version || GAME_VERSION}/game/by-summoner/#{summoner_id}/recent", query: { api_key: api_key })
    end
  end
end