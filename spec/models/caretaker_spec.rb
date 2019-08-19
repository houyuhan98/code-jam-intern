require 'rails_helper'

RSpec.describe Caretaker, type: :model do
  let(:caretaker1) { create(:caretaker) }
  let(:caretaker2) { create(:caretaker) }

  context "validations" do
    it "is valid with valid attributes" do
      expect(caretaker1).to be_valid
    end

    it "is invalid without first_name" do 
      caretaker1.first_name = nil
      expect(caretaker1).to be_invalid
    end

    it "is invalid without last_name" do
      caretaker1.last_name = nil
      expect(caretaker1).to be_invalid
    end

    it "is invalid without title" do
      caretaker1.update(title: nil)
      expect(caretaker1).to be_invalid
    end
  end

  context "before save" do
    it "titleizes first and last name" do
      caretaker1.update(first_name: 'diana', last_name: 'jones')
      expect(caretaker1.first_name).to eq 'Diana'
      expect(caretaker1.last_name).to eq 'Jones'
    end
  end


  context "name joins first and last" do
    it "joins the names with space" do
      caretaker1.update(first_name: 'Diana', last_name: 'Jones')
      expect(caretaker1.name).to eq 'Diana Jones'
    end
  end
end
