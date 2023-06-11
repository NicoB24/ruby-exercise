require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "associations" do
    it "has many reviews" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.macro).to eq(:has_many)
    end
  end
end
