class FloatFormat
  def initialize(value)
    @value = value
  end

  def self.validate(value)
    float = new(value)
    float.valid?
  end

  def valid?
    true
  end

  def to_s
    "float"
  end

  def unknown?
    false
  end
end
