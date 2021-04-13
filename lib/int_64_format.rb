require "cgi"

class Int64Format
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
    "int64"
  end

  def known?
    true
  end
end
