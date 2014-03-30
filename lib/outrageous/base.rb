require 'httparty'
require 'json'
require 'debugger'

module Outrageous

  class Base
    include HTTParty

    BASE_URI = 'https://prod.api.pvp.net'
    CHAMPIONS_VERSION = 'v1.1'
    STATIC_VERSION = 'v1'
    GAME_VERSION = 'v1.3'
    SUMMONERS_VERSION = 'v1.3'

    attr_accessor :region, :api_key, :result

    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value) if respond_to?(name)
      end
    end

    def region
      'euw' if @region.nil? || @region.empty?
    end
  end
end