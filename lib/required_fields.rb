class RequiredFields
  attr_reader :fields

  def initialize(fields)
    @fields = fields
  end

  def self.from_data(data)
    new(data.keys)
  end
end
