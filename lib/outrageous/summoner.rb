module Outrageous

  class Summoner < Base

    def find_by_names(summoner_names = [])
      summoner_names = [summoner_names] if !summoner_names.is_a? Array
      party_response = self.class.get("/api/lol/#{region}/#{SUMMONERS_VERSION}/summoner/by-name/#{summoner_names.join(',')}", query: { api_key: api_key })
      self.status = party_response.code
      self.response = party_response.parsed_response
    end

    def find_by_ids(summoner_ids = [])      
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      party_response = self.class.get("/api/lol/#{region}/#{SUMMONERS_VERSION}/summoner/#{summoner_ids.join(',')}", query: { api_key: api_key })
      self.status = party_response.code
      self.response = party_response.parsed_response
    end

    def find_masteries(summoner_ids = [])
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      party_response = self.class.get("/api/lol/#{region}/#{SUMMONERS_VERSION}/summoner/#{summoner_ids.join(',')}/masteries", query: { api_key: api_key })
      self.status = party_response.code
      self.response = party_response.parsed_response
    end

    def find_names(summoner_ids = [])
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      party_response = self.class.get("/api/lol/#{region}/#{SUMMONERS_VERSION}/summoner/#{summoner_ids.join(',')}/name", query: { api_key: api_key })
      self.status = party_response.code     
      self.response = party_response.parsed_response
    end

    def find_runes(summoner_ids = [])
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      party_response = self.class.get("/api/lol/#{region}/#{SUMMONERS_VERSION}/summoner/#{summoner_ids.join(',')}/runes", query: { api_key: api_key })
      self.status = party_response.code 
      self.response = party_response.parsed_response
    end
  end
end