require 'rails_helper'

RSpec.describe Patient, type: :model do
  let(:patient1) { create(:patient) }
  let(:patient2) { create(:patient) }
  context "validations" do
    it "is valid with valid attributes" do
      expect(patient1).to be_valid
    end

    it "is invalid without first_name" do 
      patient1.first_name = nil
      expect(patient1).to be_invalid
    end

    it "is invalid without last_name" do
      patient1.last_name = nil
      expect(patient1).to be_invalid
    end

    it "is invalid without age" do
      patient1.update(age: nil)
      expect(patient1).to be_invalid
    end

    it "is invalid without sex" do
      patient1.update(sex: nil)
      expect(patient1).to be_invalid
    end
  end

  context "before save" do
    it "titleizes first and last name" do
      patient1.update(first_name: 'tina', last_name: 'jones')
      expect(patient1.first_name).to eq 'Tina'
      expect(patient1.last_name).to eq 'Jones'
    end
  end


  context "name joins first and last" do
    it "joins the names with space" do
      patient1.update(first_name: 'Tina', last_name: 'Jones')
      expect(patient1.name).to eq 'Tina Jones'
    end
  end

end
