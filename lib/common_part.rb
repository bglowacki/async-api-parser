require "description"
require "required_fields"

class CommonPart
  def initialize(data)
    @data = data
  end

  def name
    @data["name"]
  end

  def description
    Description.from_name(name)
  end

  def required_fields
    RequiredFields.from_data(@data)
  end

  def to_h
    result = {}
    result["name"] = name
    result["description"] = description.to_s
    result["required"] = required_fields.fields
    result
  end
end
