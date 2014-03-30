module Outrageous

  class Items < Base

    def all(options = {})
      self.result= self.class.get("#{BASE_URI}/api/lol/static-data/#{region}/#{STATIC_VERSION}/item", query: { api_key: api_key }).parsed_response['data']
    end

    def find(id, options = {})
      self.result = self.class.get("#{BASE_URI}/api/lol/static-data/#{region}/#{STATIC_VERSION}/item/#{id}", query: { api_key: api_key, version: options[:version], champData: 'all', locale: options[:locale] }).parsed_response
    end
  end
end

