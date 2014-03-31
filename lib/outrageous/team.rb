module Outrageous

  class Team < Base

  # GET /api/lol/{region}/v2.2/team/by-summoner/{summonerId} Retrieves teams for given summoner ID. (REST)
  def find_by_summoner_id(summoner_id)
    respond self.class.get("/api/lol/#{region}/#{version || TEAM_VERSION}/team/by-summoner/#{summoner_id}", query: { api_key: api_key })
  end

  # GET /api/lol/{region}/v2.2/team/{teamIds} Get teams mapped by team ID for a given list of team IDs. (REST)
  def find_by_teams_ids(teams_ids)
    teams_ids = [teams_ids] if !teams_ids.is_a? Array
    respond self.class.get("/api/lol/#{region}/#{version || TEAM_VERSION}/team/#{team_ids.join(',')}", query: { api_key: api_key })
  end
  end
end

