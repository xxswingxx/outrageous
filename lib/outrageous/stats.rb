module Outrageous

  class Stats < Base

    def player_ranked_by_season(summoner_id, season = 4)
      respond self.class.get("/api/lol/#{region}/#{version || STATS_VERSION}/stats/by-summoner/#{summoner_id}/ranked", query: { api_key: api_key, season: "SEASON#{season}" })
    end

    def player_summary_by_season(summoner_id, season = 4)
      respond self.class.get("/api/lol/#{region}/#{version || STATS_VERSION}/stats/by-summoner/#{summoner_id}/summary", query: { api_key: api_key, season: "SEASON#{season}" })
    end
  end
end

