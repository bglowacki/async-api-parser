class Description
  def initialize(name)
    @name = name
  end

  def self.from_name(name)
    description = new(name)
    description.to_s
  end

  def to_s
    @name.capitalize.split("_").join(" ")
  end
end
