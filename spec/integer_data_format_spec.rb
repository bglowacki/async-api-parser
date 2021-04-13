RSpec.describe IntegerDataFormat do
  subject { IntegerDataFormat.new(data) }

  context "when integer is below or equal 32 bits" do
    let(:data) { 10 }
    it "returns int32 " do
      format = subject.to_s
      expect(format).to eq("int32")
    end
  end

  context "when integer is above 32 bits" do
    let(:data) { 256**40 -1 }
    it "returns object" do
      format = subject.to_s
      expect(format).to eq("int64")
    end
  end
end
