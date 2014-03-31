module Outrageous

  class Champion < Base

    def all(options = {})
      party_response = self.class.get("/api/lol/#{region}/#{CHAMPIONS_VERSION}/champion", query: { api_key: api_key, freeToPlay: options[:freeToPlay] })
      self.status = party_response.code

      if options[:filter].nil?
        self.response = party_response.parsed_response['champions']
      else
        self.response = party_response.parsed_response['champions'].select { |champion| champion if champion["name"].match(/#{Regexp.quote options[:filter]}/i) || champion["id"] == options[:filter] }
      end
    end

    def detailed_all(options = {})
      party_response = self.class.get("/api/lol/static-data/#{region}/#{STATIC_VERSION}/champion", query: { api_key: api_key, version: options[:version], champData: 'all', locale: options[:locale] })
      self.status = party_response.code
      self.response = party_response.parsed_response['data']
    end

    def find(id, options = {})
      self.response = self.class.get("/api/lol/static-data/#{region}/#{STATIC_VERSION}/champion/#{id}", query: { api_key: api_key, version: options[:version], champData: 'all', locale: options[:locale] }).parsed_response
    end
  end
end

