require 'rails_helper'

RSpec.describe Dog, type: :model do
  describe "Dog attributes" do
    let (:dog) {FactoryBot.build(:dog)}

    it "should have all the attributes" do
      expect(dog).to be_valid
    end

    it "should have a name - 名前があること" do
      dog = FactoryBot.build(:dog, name: nil)
      expect(dog).to_not be_valid
    end

    it "should have a breed - 種類があること" do
      dog = FactoryBot.build(:dog, breed: nil)
      expect(dog).to_not be_valid
    end

    it "should have an age - 年齢があること" do
      dog = FactoryBot.build(:dog, age: nil)
      expect(dog).to_not be_valid
    end

    it "should have weight - 体重があること" do
      dog = FactoryBot.build(:dog, weight: nil)
      expect(dog).to_not be_valid
    end

    it "should have a birthday - 誕生日があること" do
      dog = FactoryBot.build(:dog, birthday: nil)
      expect(dog).to_not be_valid
    end
  end

  describe "#sick" do
    let (:dog) {FactoryBot.build(:dog)}

    it "should return the expected value" do
      dog.sick = true
      expect(dog.sick?).to eq(true)

      dog.sick = false
      expect(dog.sick?).to eq(false)
    end

    it "#is_sick should change the attribute sick" do
      expect(dog.is_sick).to eq(true)
    end

    it "#is_cured should change the attribute sick" do
      expect(dog.is_cured).to eq(false)
    end
  end
end
