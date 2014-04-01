module Outrageous
  class Champion < Base
    def all(options = {})
      get("/api/lol/#{region}/#{version || CHAMPION_VERSION}/champion", options)
    end

    def find(id, options = {})
      get("/api/lol/#{region}/#{version || CHAMPION_VERSION}/champion/#{id}", options)
    end
  end
end

