require 'rails_helper'
require 'exercise1_helper'

describe Exercise1Helper do
  include Exercise1Helper

  context "when filter_and_group receives a not empty array" do
    let(:strings) { ["cat", "dog", "elephant", "lion", "ant"] }

    it "returns a hash with the count of strings with length less than i" do
      expect(filter_and_group(strings, 4)).to eq({3 => 3})
    end

    it "returns an empty hash if no strings have length less than i" do
      expect(filter_and_group(strings, 2)).to eq({})
    end
  end

  context "when filter_and_group receives an empty array" do
    let(:strings) { [] }

    it "returns an empty hash with all the possible i values" do
      expect(filter_and_group(strings, 4)).to eq({})
    end
  end
end
