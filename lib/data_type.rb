class DataType
  def initialize(type)
    @type = type
  end

  def to_s
    case @type
    when Hash
      "object"
    when Integer
      "integer"
    when Float
      "number"
    when FalseClass, TrueClass
      "boolean"
    when NilClass
      "unknown"
    else
      @type.class.to_s.downcase
    end
  end
end
