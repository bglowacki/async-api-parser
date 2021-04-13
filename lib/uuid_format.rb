require "uuid"

class UUIDFormat
  def initialize(value)
    @value = value
  end

  def self.validate(value)
    uuid = new(value)
    uuid.valid?
  end

  def valid?
    UUID.validate(@value)
  end

  def known?
    true
  end

  def to_s
    "uuid"
  end

end
