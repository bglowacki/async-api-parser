require "uuid"
require "date"
require_relative "url_params"
require_relative "date_format"
require_relative "date_time_format"
require_relative "unknown"

class StringDataFormat
  def initialize(string)
    @string = string
  end

  def to_s
    return "url" if UrlParams.validate(@string)
    return "uuid" if UUID.validate(@string)
    return "date-time" if DateTimeFormat.validate(@string)
    return "date" if DateFormat.validate(@string)
    Unknown.new.to_s
  end
end
