module Outrageous

  class Game < Base

  	def find(summoner_id)
      get("/api/lol/#{region}/#{version || GAME_VERSION}/game/by-summoner/#{summoner_id}/recent")
    end
  end
end