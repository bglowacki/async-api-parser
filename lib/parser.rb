libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require "yaml"
require "multi_json"
require_relative "data_type"
require_relative "data_format"
require_relative "common_part"
require_relative "property"
require_relative "properties"
require_relative "parsed_event"

class Parser
  def parse(json)
    loaded_json = MultiJson.load(json)
    properties_json = loaded_json.dup
    properties_json.delete("name")

    event = ParsedEvent.new(
      properties: Properties.new(properties_json),
      common: CommonPart.new(loaded_json)
    ).to_h
    puts event.to_yaml
  end
end
