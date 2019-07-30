FactoryBot.define do
  factory :task do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence(10) }
    completed { [true, false].sample } 
    user 
  end
end
