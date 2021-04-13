class CommonPart
  def initialize(data)
    @data = data
  end

  def to_h
    name = @data["name"]
    result = {}
    result["name"] = name
    result["description"] = name.split(/[:_]/).join(" ")
    result["required"] = @data.keys
    result
  end
end
