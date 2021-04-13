class Property
  def initialize(name, data)
    @name = name
    @data = data
  end

  def to_h
    data_type = DataType.new(@data).to_s
    data_format = DataFormat.new(data_type, @data).detect

    t = { 'type' => data_type, 'description' => @name.capitalize }
    t.merge!({ 'format' => data_format.to_s }) unless data_format.unknown?

    if @data.is_a?(Hash)
      t.merge!(
        {
          'properties' => Properties.new(@data).to_h,
          'required' => @data.keys
        }
      )
    end

    t
  end
end
