require "cgi"

class UrlParams
  def initialize(value)
    @value = value
  end

  def self.validate(value)
    url_params = new(value)
    url_params.valid?
  end

  def valid?
    params =  CGI::parse(@value)
    !params.values.flatten.empty?
  end

  def to_s
    "url"
  end

  def unknown?
    false
  end
end
