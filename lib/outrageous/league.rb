module Outrageous

  class League < Base

    def get_leagues_with_team_by_summoner_id(summoner_id)
      respond self.class.get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-summoner/#{summoner_id}", query: { api_key: api_key })
    end

    def get_leagues_entry_by_summoner_id(summoner_id)
      respond self.class.get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-summoner/#{summoner_id}/entry", query: { api_key: api_key })
    end

    def get_leagues_by_team_id(team_id)
      respond self.class.get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-team/#{team_id}", query: { api_key: api_key })
    end

    def get_leagues_entry_by_team_id(team_id)
      respond self.class.get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-team/#{team_id}/entry", query: { api_key: api_key })
    end

    def get_challenger_solo_q()
      get_challenger_info('RANKED_SOLO_5_X_5')
    end

    def get_challenger_team_3_vs_3()
      get_challenger_info('RANKED_TEAM_3_X_3')
    end

    def get_challenger_team_5_vs_5()
      get_challenger_info('RANKED_TEAM_5_X_5')      
    end 

    def get_challenger_info(type)
      respond self.class.get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/challenger", query: { api_key: api_key, type: type })
    end
  end
end

