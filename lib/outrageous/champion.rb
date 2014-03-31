module Outrageous

  class Champion < Base
    def all(options = {})
      respond self.class.get("/api/lol/#{region}/#{version || CHAMPION_VERSION}/champion", query: { api_key: api_key, freeToPlay: options[:freeToPlay] })
    end
  end
end

