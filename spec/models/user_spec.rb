require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it "has many reviews" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.macro).to eq(:has_many)
    end
  end

  describe "full_name" do
    it "returns the full name of the user" do
      user = described_class.new(first_name: "John", last_name: "Doe")
      expect(user.full_name).to eq("John Doe")
    end
  end
end
