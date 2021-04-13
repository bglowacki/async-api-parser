class Event
  def initialize(data)
    @properties = Properties.new(data)
    @common = CommonPart.new(data)
  end


  def payload
    @properties
  end

  def common
    @common
  end

  def to_h
    common.to_h.merge({ "payload" => payload.to_h })
  end
end
