class DateTimeFormat
  def initialize(value)
    @value = value
  end

  def self.validate(value)
    date = new(value)
    date.valid?
  end

  def valid?
    begin
      date_time = DateTime.parse(@value)
      date_time.hour != 0 && date_time.minute != 0 && date_time.second != 0
    rescue Date::Error
      false
    end
  end

  def unknown?
    false
  end

  def to_s
    "date-time"
  end
end
