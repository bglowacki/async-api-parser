require "uuid"
require "date"
require "cgi"

class StringDataFormat
  def initialize(string)
    @string = string
  end

  def to_s
    return "url" if url_params?
    return "uuid" if UUID.validate(@string)
    return "date-time" if date_time?
    return "date" if date?
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

  def date?
    begin
      Date.parse(@string)
    rescue Date::Error
      false
    end
  end

  def url_params?
    params =  CGI::parse(@string)
    !params.values.flatten.empty?
  end
end