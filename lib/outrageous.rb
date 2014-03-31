require 'ostruct'

%w(base champion game client item summoner).each { |filename| require "outrageous/#{ filename }" }

module Outrageous

end