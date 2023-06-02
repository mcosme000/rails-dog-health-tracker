require 'rails_helper'

RSpec.describe User, type: :model do
  it "Must have a valid email address" do
    user = FactoryBot.create(:user)
    user2 = FactoryBot.create(:user)
    expect(user.email).to eq("hello1@world.com")
    expect(user2.email).to eq("hello2@world.com")
  end
end
