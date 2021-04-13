require "uuid"
require "date"
require_relative "url_params"
require_relative "date_format"

class StringDataFormat
  def initialize(string)
    @string = string
  end

  def to_s
    return "url" if UrlParams.validate(@string)
    return "uuid" if UUID.validate(@string)
    return "date-time" if date_time?
    return "date" if DateFormat.validate(@string)
    "unknown"
  end

  private

  def date_time?
    begin
      date_time = DateTime.parse(@string)
      date_time.hour != 0 && date_time.minute != 0 && date_time.second != 0
    rescue Date::Error
      false
    end
  end
end
