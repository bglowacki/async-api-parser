RSpec.describe StringDataFormat do
  subject { described_class.new(data) }

  context "when data in uuid format" do
    let(:data) { "42297cdd-19a6-4544-a47a-3f615f74d913" }
    it "returns uuid " do
      format = subject.to_s
      expect(format).to eq("uuid")
    end
  end

  context "when data date" do
    let(:data) { Date.today.to_s }
    it "returns date" do
      format = subject.to_s
      expect(format).to eq("date")
    end
  end

  context "when data date_time" do
    let(:data) { "2020-04-28T07:46:29.823231+0000" }
    it "returns date" do
      format = subject.to_s
      expect(format).to eq("date-time")
    end
  end

  context "when data url params" do
    let(:data) { "?d=identicon&s=200" }
    it "returns date" do
      format = subject.to_s
      expect(format).to eq("url")
    end
  end
end
