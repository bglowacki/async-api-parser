RSpec.describe RequiredFields do
  context "value is nil" do
    let(:data) {
      {
        name: "My name",
        not_name: nil
      }
    }

    subject { described_class.from_data(data) }
    it "is rejected from required" do
      expect(subject.fields).to eq([:name])
    end
  end
end
