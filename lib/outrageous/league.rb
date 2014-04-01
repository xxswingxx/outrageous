module Outrageous

  class League < Base

    def get_leagues_with_team_by_summoner_id(summoner_id)
      get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-summoner/#{summoner_id}")
    end

    def get_leagues_entry_by_summoner_id(summoner_id)
      get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-summoner/#{summoner_id}/entry")
    end

    def get_leagues_by_team_id(team_id)
      get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-team/#{team_id}")
    end

    def get_leagues_entry_by_team_id(team_id)
      get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/by-team/#{team_id}/entry")
    end
    
    def get_challenger_info(options)
      get("/api/lol/#{region}/#{version || LEAGUE_VERSION}/league/challenger")
    end

    # Premade methods
    def get_challenger_solo_q
      get_challenger_info(type: 'RANKED_SOLO_5_X_5')
    end

    def get_challenger_team_3_vs_3
      get_challenger_info(type: 'RANKED_TEAM_3_X_3')
    end

    def get_challenger_team_5_vs_5
      get_challenger_info(type: 'RANKED_TEAM_5_X_5')      
    end 
  end
end

