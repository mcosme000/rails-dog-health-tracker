require 'rails_helper'

RSpec.describe Establishment, type: :model do
  it "Properly resets the phone number" do
    establishment = Establishment.new(name: "Vet", address: "Nara", phone_number: "123-456")
    Establishment.reset_phone_number(establishment)
    expect(establishment.phone_number).to eq("123456")
  end
end
