class ParsedEvent
  def initialize(properties:, common:)
    @properties = properties
    @common = common
  end

  def to_h
    @common.to_h.merge({ "payload" => @properties.to_h })
  end
end
