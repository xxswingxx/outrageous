require 'httparty'
require 'json'
require 'debugger'

module Outrageous

  class Base
    include HTTParty

    BASE_URI = 'https://prod.api.pvp.net'

    attr_accessor :region, :api_key

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