class DateFormat
  def initialize(value)
    @value = value
  end

  def self.validate(value)
    date = new(value)
    date.valid?
  end

  def valid?
    begin
      Date.parse(@value)
    rescue Date::Error
      false
    end
  end

  def known?
    true
  end

  def to_s
    "date"
  end
end
