FactoryBot.define do
  factory :dog do
    name { "String" }
    breed { "String" }
    age { 6 }
    weight { 10 }
    birthday { "2020/07/06" }
    sick { false }
  end
end
