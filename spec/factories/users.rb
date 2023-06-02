FactoryBot.define do
  factory :user do
    sequence(:email)  { |n| "hello#{n}@world.com" }
    password { 123456 }
    name { "MyString" }
  end
end


# When we have the unique validation in the model, we can use the
# helper method sequence to generate a number and interpolate it
# to generate unique values
