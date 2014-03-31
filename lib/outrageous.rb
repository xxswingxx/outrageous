require 'ostruct'

%w(base champion game client item mastery rune summoner summoner_spell).each { |filename| require "outrageous/#{ filename }" }

module Outrageous

end