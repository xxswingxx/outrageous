require 'ostruct'
require 'debugger'
%w(base champion game league stats summoner).each { |filename| require "outrageous/#{filename}" }
%w(base champion item mastery rune summoner_spell).each { |filename| require "outrageous/static_data/#{filename}" }

module Outrageous

end