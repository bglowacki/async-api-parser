require "description"
require "required_fields"

class PropertyData
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def type
    DataType.new(@data)
  end

  def format
    DataFormat.new(type.to_s, @data).detect
  end

  def keys
    @data.keys || []
  end
end

class Property
  def initialize(name, data)
    @name = name
    @data = PropertyData.new(data)
  end

  def description
    Description.from_name(@name)
  end

  def required_fields
    RequiredFields.new(@data)
  end

  def to_h
    {}.tap do |h|
      h["type"] = @data.type.to_s
      h["description"] = description.to_s
      h["format"] = @data.format.to_s if @data.format.known?

      if @data.type.object?
        h["properties"] = Properties.new(@data.data).to_h
        h["require"] = required_fields.fields
      end
    end
  end
end
