require "date"
require "formats/url_params_format"
require "formats/date_format"
require "formats/date_time_format"
require "formats/uuid_format"
require "unknown"

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
