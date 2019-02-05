require "local_events2/version"
require "local_events2/cli"
require "local_events2/event"
require "local_events2/scraper"

module LocalEvents2
  class Error < StandardError; end
  # Your code goes here...
end


require 'nokogiri'
require 'open-uri'
require 'watir'
require 'pry'
require 'colorize'