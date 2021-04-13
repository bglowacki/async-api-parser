require "date"
require_relative "url_params_format"
require_relative "date_format"
require_relative "date_time_format"
require_relative "uuid_format"
require_relative "unknown"

class StringDataFormat
  def initialize(string)
    @string = string
  end

  def format
    return UrlParamsFormat.new(@string) if UrlParamsFormat.validate(@string)
    return UUIDFormat.new(@string) if UUIDFormat.validate(@string)
    return DateTimeFormat.new(@string) if DateTimeFormat.validate(@string)
    return DateFormat.new(@string) if DateFormat.validate(@string)
    Unknown.new
  end
end
