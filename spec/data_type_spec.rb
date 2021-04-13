RSpec.describe DataType do
  subject { DataType.new(data) }
  context "when data type is Hash" do
    let(:data) { Hash.new }
    it "returns object" do
      type = subject.to_s
      expect(type).to eq("object")
    end
  end

  context "when data type is integer" do
    let(:data) { 10 }
    it "returns object" do
      type = subject.to_s
      expect(type).to eq("integer")
    end
  end

  context "when data type is float" do
    let(:data) { 1.0 }
    it "returns object" do
      type = subject.to_s
      expect(type).to eq("number")
    end
  end

  context "when data type is string" do
    let(:data) { "some string" }
    it "returns object" do
      type = subject.to_s
      expect(type).to eq("string")
    end
  end

  context "when data type is boolean" do
    let(:data) { false }
    it "returns object" do
      type = subject.to_s
      expect(type).to eq("boolean")
    end
  end
end
