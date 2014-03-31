module Outrageous

  class Summoner < Base

    def find_by_names(summoner_names = [])
      summoner_names = [summoner_names] if !summoner_names.is_a? Array
      respond self.class.get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/by-name/#{summoner_names.join(',')}", query: { api_key: api_key })
    end

    def find_by_ids(summoner_ids = [])      
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      respond self.class.get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}", query: { api_key: api_key })
    end

    def find_masteries(summoner_ids = [])
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      respond self.class.get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}/masteries", query: { api_key: api_key })
    end

    def find_names(summoner_ids = [])
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      respond self.class.get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}/name", query: { api_key: api_key })
    end

    def find_runes(summoner_ids = [])
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      respond self.class.get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}/runes", query: { api_key: api_key })
    end
  end
end