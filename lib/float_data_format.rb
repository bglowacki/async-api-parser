require_relative "float_format"

class FloatDataFormat
  def initialize(float)
    @float = float
  end

  def format
    FloatFormat.new(@float)
  end
end
