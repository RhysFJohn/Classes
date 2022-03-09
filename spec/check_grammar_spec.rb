require 'check_grammar'

RSpec.describe "check_grammar method" do
  context "given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end

  context "given an string that starts with a capital and ends in correct punctuation." do
    it "returns true" do
      result = check_grammar("Hello, I am Rhys.")
      expect(result).to eq true
    end
  end

  context "given a sentence without a capital letter" do
    it "returns false" do
      result = check_grammar("hello, I am Rhys.")
      expect(result).to eq false
    end
  end

  context "given a sentence without a full stop" do
    it "returns false" do
      result = check_grammar("Hello, I am Rhys")
      expect(result).to eq false
    end
  end

  context "given a sentence with neither a capital or a full stop" do
    it "returns false" do
      result = check_grammar("hello, I am Rhys")
      expect(result).to eq false
    end
  end
  
  context "given a sentence with a uppercase word" do
    it "returns true" do
      result = check_grammar("HELLO, I am Rhys.")
      expect(result).to eq true
    end
  end

  context "given a sentence with a exclamation point" do
    it "returns true" do
      result = check_grammar("Hello, I am Rhys!")
      expect(result).to eq true
    end
  end

  context "given a sentence with a question mark" do
    it "returns true" do
      result = check_grammar("Hello, I am Rhys?")
      expect(result).to eq true
    end
  end
  
  context "given a sentence with a comma at the end" do
    it "returns false" do
      result = check_grammar("Hello, I am Rhys,")
      expect(result).to eq false
    end
  end
end