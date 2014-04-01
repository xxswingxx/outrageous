module Outrageous

  class Champion < Base
    def all(options = {})
      respond self.class.get("/api/lol/#{region}/#{version || CHAMPION_VERSION}/champion", query: { api_key: api_key}.merge(options) )
    end

    def find(id, options = {})
      respond self.class.get("/api/lol/#{region}/#{version || CHAMPION_VERSION}/champion#{id}", query: { api_key: api_key } )
    end
  end
end

