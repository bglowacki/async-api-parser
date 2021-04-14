class RequiredFields

  def initialize(data)
    @data = data
  end

  def self.from_data(data)
    new(data)
  end

  def fields
    @data.select { |_key, value| !value.nil? }.keys
  end
end
