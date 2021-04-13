require_relative "int_32_format"

class IntegerDataFormat
  def initialize(int)
    @int = int
  end

  def format
    if @int.to_s.bytesize <= 32
      Int32Format.new(@int)
    else
      Int64Format.new(@int)
    end
  end
end
