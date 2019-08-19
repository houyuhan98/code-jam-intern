FactoryBot.define do
  factory :patient do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    age { Faker::Number.digit }
    sex { Faker::Gender.binary_type }
  end

  factory :record do
    description { Faker::Lorem.paragraph }
    admitted_at { Time.now }
    patient
  end

  factory :wing do
    name { Faker::Name.first_name }
    description { Faker::Lorem.paragraph }
  end

  factory :caretaker do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    title { 'Doctorate' } 
  end
end