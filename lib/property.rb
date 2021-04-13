require_relative "description"

class Property
  def initialize(name, data)
    @name = name
    @data = data
  end

  def to_h
    data_type = DataType.new(@data)
    data_format = DataFormat.new(data_type.to_s, @data).detect
    description = Description.from_name(@name)

    t = {}.tap do |h|
      h["type"] = data_type.to_s
      h["description"] = description.to_s
      h["format"] = data_format.to_s if data_format.known?
    end

    if @data.is_a?(Hash)
      t.merge!(
        {
          'properties' => Properties.new(@data).to_h,
          'required' => @data.keys
        }
      )
    end

    t
  end
end
