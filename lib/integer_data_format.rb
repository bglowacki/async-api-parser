class IntegerDataFormat
  def initialize(int)
    @int = int
  end

  def to_s
    if @int.to_s.bytesize <= 32
      "int32"
    else
      "int64"
    end
  end
end
