module Outrageous

  class Team < Base

    # GET /api/lol/{region}/v2.2/team/by-summoner/{summonerId} Retrieves teams for given summoner ID. (REST)
    def find_by_summoner_id(summoner_id, options = {})
      get("/api/lol/#{region}/#{version || TEAM_VERSION}/team/by-summoner/#{summoner_id}", options)
    end

    # GET /api/lol/{region}/v2.2/team/{teamIds} Get teams mapped by team ID for a given list of team IDs. (REST)
    def find_by_ids(teams_ids, options = {})
      teams_ids = [teams_ids] if !teams_ids.is_a? Array
      get("/api/lol/#{region}/#{version || TEAM_VERSION}/team/#{teams_ids.join(',')}", options)
    end
  end
end

