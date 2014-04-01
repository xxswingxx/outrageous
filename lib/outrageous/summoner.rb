module Outrageous
  class Summoner < Base

    def find_by_names(summoner_names = [], options = {})
      summoner_names =
      summoner_names = [summoner_names] if !summoner_names.is_a? Array
      get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/by-name/#{summoner_names.map { |s| URI::encode(s) }.join(',')}", options)
    end

    def find_by_ids(summoner_ids = [], options = {})      
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}", options)
    end

    def find_masteries(summoner_ids = [], options = {})
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}/masteries", options)
    end

    def find_names(summoner_ids = [], options = {})
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}/name", options)
    end

    def find_runes(summoner_ids = [], options = {})
      summoner_ids = [summoner_ids] if !summoner_ids.is_a? Array
      get("/api/lol/#{region}/#{version || SUMMONER_VERSION}/summoner/#{summoner_ids.join(',')}/runes", options)
    end
  end
end