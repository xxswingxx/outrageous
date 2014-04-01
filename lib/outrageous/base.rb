require 'httparty'
require 'json'
require 'debugger'

module Outrageous

  class Base
    include HTTParty

    base_uri 'https://prod.api.pvp.net'
    
    CHAMPION_VERSION = 'v1.2'
    GAME_VERSION = 'v1.3'
    LEAGUE_VERSION = 'v2.3'
    STATS_VERSION = 'v1.2'
    STATIC_DATA_VERSION = 'v1'
    SUMMONER_VERSION = 'v1.4'
    TEAM_VERSION = 'v2.2'

    attr_accessor :region, :api_key, :version, :response, :status

    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value) if respond_to?(name)
      end
    end

    def region
      'euw' if @region.nil? || @region.empty?
    end

    protected
    def respond(response)
      self.status = response.code
      self.response = response.parsed_response
    end
  end
end