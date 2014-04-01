###########################################################################
# Base class to retrieve information about champions, items, masteries, 
# realm, runes and summoner spells.
# Example usage: 
#    client = Outrageous::Champion.new(api_key: 'xxxxxxxxxxxxxxxxxxxxx')
#    client.all
#    client.find 1
###########################################################################

module Outrageous

  module StaticData
    class Base < Outrageous::Base

      # List elements
      def all(options = {})
        respond self.class.get("/api/lol/static-data/#{region}/#{version || STATIC_DATA_VERSION}/#{self.class.api_model}", query: { api_key: api_key }.merge(options) })
      end

      # Show a specific element
      def find(id, options = {})
        respond self.class.get("/api/lol/static-data/#{region}/#{version || STATIC_DATA_VERSION}/#{self.class.api_model}/#{id}", query: { api_key: api_key}.merge(options))
      end

      protected
      def self.api_model(klass)
        instance_eval <<-END
          def api_model
            '#{klass}'
          end
        END
        class_eval <<-END
          def api_model
            '#{klass}'
          end
        END
      end
    end
  end
end

