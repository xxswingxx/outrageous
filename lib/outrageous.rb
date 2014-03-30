require 'ostruct'

%w(base champions game client items summoners).each { |filename| require "outrageous/#{ filename }" }

module Outrageous

end