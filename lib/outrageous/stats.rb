module Outrageous

  class Stats < Base

    def player_ranked_by_season(summoner_id, options = { season: 'SEASON4'})
      get("/api/lol/#{region}/#{version || STATS_VERSION}/stats/by-summoner/#{summoner_id}/ranked",  options)
    end

    def player_summary_by_season(summoner_id, options = { season: 'SEASON4'})
      get("/api/lol/#{region}/#{version || STATS_VERSION}/stats/by-summoner/#{summoner_id}/summary",  options)
    end
  end
end

