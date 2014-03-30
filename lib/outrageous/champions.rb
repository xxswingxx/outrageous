module Outrageous
  class Champions < Base
    CHAMPIONS_VERSION = 'v1.1'
    CHAMPIONS_STATIC_VERSION = 'v1'

    attr_accessor :result

    def all(options = {})
      party_response = self.class.get("#{BASE_URI}/api/lol/#{region}/#{CHAMPIONS_VERSION}/champion", query: { api_key: api_key, freeToPlay: options[:freeToPlay] }).parsed_response['champions']
      if options[:filter].nil?
        self.result = party_response
      else
        self.result = party_response.select { |champion| champion if champion["name"].match(/#{Regexp.quote options[:filter]}/i) || champion["id"] == options[:filter] }
      end
    end

    def detailed_all(options = {})
      self.result = self.class.get("#{BASE_URI}/api/lol/static-data/#{region}/#{CHAMPIONS_STATIC_VERSION}/champion", query: { api_key: api_key, version: options[:version], champData: 'all', locale: options[:locale] }).parsed_response['data']
    end

    def find(id, options = {})
      debugger
      self.result = self.class.get("#{BASE_URI}/api/lol/static-data/#{region}/#{CHAMPIONS_STATIC_VERSION}/champion/#{id}", query: { api_key: api_key, version: options[:version], champData: 'all', locale: options[:locale] }).parsed_response
    end
  end
end

