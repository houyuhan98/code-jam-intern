require 'rails_helper'

RSpec.describe Record, type: :model do
  let(:record1) { create(:record) }
  let(:record2) { create(:record) }

  context "validations" do
    it "is valid with valid attributes" do
      expect(record1).to be_valid
    end

    it "is invalid without first_name" do 
      record1.description = nil
      expect(record1).to be_invalid
    end

    it "is invalid without last_name" do
      record1.admitted_at = nil
      expect(record1).to be_invalid
    end

    it "is invalid without patient id" do
      record1.patient_id = nil
      expect(record1).to be_invalid
    end
  end
end
