module Outrageous

  class Game < Base
    
  	def find(summoner_id)
      party_response = self.class.get("/api/lol/#{region}/#{GAME_VERSION}/game/by-summoner/#{summoner_id}/recent", query: { api_key: api_key })
      self.status = party_response.code
	  self.response = party_response.parsed_response['games']
    end
  end
end