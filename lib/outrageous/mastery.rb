module Outrageous

  class Mastery < Base

    def all(options = {})
      party_response = self.class.get("/api/lol/static-data/#{region}/#{STATIC_VERSION}/mastery", query: { api_key: api_key, version: options[:version], masteryListData: 'all', locale: options[:locale] })
      self.status = party_response.code
      self.response = party_response.parsed_response['data']
    end

    def find(id, options = {})
      party_response = self.class.get("/api/lol/static-data/#{region}/#{STATIC_VERSION}/mastery/#{id}", query: { api_key: api_key, version: options[:version], masteryListData: 'all', locale: options[:locale] })
      self.status = party_response.code
      self.response = party_response.parsed_response
    end
  end
end

