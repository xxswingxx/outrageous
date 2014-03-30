module Outrageous

  class Summoners

  	def find_by_name(summoner_name)
  	  sellf.result = self.class.get("#{BASE_URI}/api/lol/#{region}/#{SUMMONERS_VERSION}/summoner/by-name/#{summoner_names.join(',')}", query: { api_key: api_key })
  	end

  	def find_by_ids(summoner_ids = [])
  	  sellf.result = self.class.get("#{BASE_URI}/api/lol/#{region}/#{SUMMONERS_VERSION}/summoner/#{summoner_ids.join(',')}", query: { api_key: api_key })
  	end
  end
end