
describe "Operations" do
  let(:file_contents) { File.read(File.join(File.dirname(__FILE__), '..', 'lib/operations.rb')) }

  describe "#unsafe?" do
    it 'returns true if speed is greater than 60' do
      answer = unsafe?(79)
      expect(answer).to eq(true)
    end

    it 'returns true if speed is less than 40' do
      answer = unsafe?(35)
      expect(answer).to eq(true)
    end

    it 'returns false if the speed is between 40 and 60' do
      answer = unsafe?(50)
      expect(answer).to eq(false)
    end
  end

  describe "#not_safe?" do
    it 'returns true if speed is greater than 60' do
      answer = not_safe?(79)
      expect(answer).to eq(true)
    end

    it 'returns true if speed is less than 40' do
      answer = not_safe?(35)
      expect(answer).to eq(true)
    end

    it 'returns false if the speed is between 40 and 60' do
      answer = not_safe?(50)
      expect(answer).to eq(false)
    end

    it 'uses the ternary operator' do
      methods = file_contents.split("not_safe?")
      match = methods.last
      expect(match).to include("?")
    end
  end
  
end
