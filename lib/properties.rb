require "property"

class Properties
  def initialize(data)
    @data = data
  end

  def to_h
    @data.keys.each_with_object({}) do |key, h|
      h[key] = Property.new(key, @data[key]).to_h
    end
  end
end
