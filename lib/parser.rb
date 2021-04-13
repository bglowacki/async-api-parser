libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require "yaml"
require "multi_json"
require_relative "data_type"
require_relative "data_format"
require "event"

class Parser
  def parse(json)
    loaded_json = MultiJson.load(json)

    event = Event.new(loaded_json).to_h
    puts event.to_yaml
  end
end
