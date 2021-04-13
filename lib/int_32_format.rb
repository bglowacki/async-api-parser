require "cgi"

class Int32Format
  def initialize(value)
    @value = value
  end

  def self.validate(value)
    int_32_format = new(value)
    int_32_format.valid?
  end

  def valid?
    true
  end

  def to_s
    "int32"
  end

  def unknown?
    false
  end
end
