require_relative "integer_data_format"
require_relative "string_data_format"
require_relative "float_data_format"
require_relative "unknown"


class DataFormat
  def initialize(data_type, data)
    @data_type = data_type
    @data = data
  end

  def detect
    case @data_type
    when "integer"
      IntegerDataFormat.new(@data).format
    when "float"
      FloatDataFormat.new(@data).format
    when "string"
      pp "string"
      StringDataFormat.new(@data).format
    else
      Unknown.new
    end
  end
end
