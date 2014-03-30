module Outrageous
  class Champions < Base
    CHAMPIONS_VERSION = 'v1.1'

    attr_accessor :result

    def find(options = {})
      party_response = self.class.get("#{BASE_URI}/#{region}/v1.1/champion", query: { api_key: api_key, freeToPlay: options[:freeToPlay] }).parsed_response['champions']
      if options[:filter].nil?
        self.result = party_response
      else
        self.result = party_response.select { |champion| champion if champion["name"].match(/#{Regexp.quote options[:filter]}/i) || champion["id"] == options[:filter] }
      end
    end
  end
end