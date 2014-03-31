module Outrageous

  class Item < Base

    def all(options = {})
      party_response = self.class.get("/api/lol/static-data/#{region}/#{STATIC_VERSION}/item", query: { api_key: api_key, version: options[:version], itemListData: 'all', locale: options[:locale] })
      self.status = party_response.code
      self.response = party_response.parsed_response['data']
    end

    def find(id, options = {})
      party_response = self.class.get("/api/lol/static-data/#{region}/#{STATIC_VERSION}/item/#{id}", query: { api_key: api_key, version: options[:version], itemListData: 'all', locale: options[:locale] })
      self.status = party_response.code
      self.response = party_response.parsed_response
    end
  end
end

