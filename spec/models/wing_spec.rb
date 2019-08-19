require 'rails_helper'

RSpec.describe Wing, type: :model do
  let(:wing1) { create(:wing) }
  let(:wing2) { create(:wing) }

  context "validations" do
    it "is valid with valid attributes" do
      expect(wing1).to be_valid
    end

    it "is invalid without a name" do
      wing1.name = nil
      expect(wing1).to be_invalid
    end

    it "is invalid without a description" do
      wing1.description = nil 
      expect(wing1).to be_invalid
    end
  end

  context "before save" do
    it "titleizes name" do
      wing1.update(name: 'pediatrics')
      expect(wing1.name).to eq 'Pediatrics'
    end
  end
end
