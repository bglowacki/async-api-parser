RSpec.describe Parser do
  it "works" do

    json = <<~JSON
      {
        "id": "497f6eca-6276-4993-bfeb-53cbbbba6f08",
        "name": "school:assigned:to_customer",
        "timestamp": "2019-08-24",
        "tracing": {
          "trace_id": "string",
          "parent_id": "string"
        },
        "version": 1,
        "data": {
          "name": "string",
          "feature_package": "string"
        }
      }
    JSON
    expected = YAML.load_file("spec/event.yaml")
    parser = Parser.new
    parsed = parser.parse(json)

    # pp parsed
    # pp expected
  end
end
