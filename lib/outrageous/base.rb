require 'httparty'
require 'json'
require 'debugger'

module Outrageous

  class Base
    include HTTParty
    base_uri 'https://prod.api.pvp.net'

    REALM_VERSION = 'v1'
    BASE_URI = 'https://prod.api.pvp.net'
    CHAMPIONS_VERSION = 'v1.1'
    STATIC_VERSION = 'v1'
    GAME_VERSION = 'v1.3'
    SUMMONERS_VERSION = 'v1.3'

    attr_accessor :region, :api_key, :response, :status

    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value) if respond_to?(name)
      end
    end

    def region
      'euw' if @region.nil? || @region.empty?
    end

    def realm
      party_response = self.class.get("/api/lol/static-data/#{region}/#{REALM_VERSION}/realm", query: { api_key: api_key })
      self.status = party_response.code
      self.response = party_response.parsed_response
    end
  end
end