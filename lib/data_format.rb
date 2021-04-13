require_relative "integer_data_format"
require_relative "string_data_format"
require_relative "float_data_format"

class DataFormat
  def initialize(data_type, data)
    @data_type = data_type
    @data = data
  end

  def to_s
    case @data_type
    when "integer"
      IntegerDataFormat.new(@data).to_s
    when "float"
      FloatDataFormat.new(@data).to_s
    when "string"
      StringDataFormat.new(@data).format.to_s
    else
      "unknown"
    end
  end

  def unknown?
    to_s == "unknown"
  end
end
