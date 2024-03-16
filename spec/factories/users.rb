FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.email}
    profile               {Faker::Lorem.sentence}
    hobby                 {Faker::Lorem.sentence}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
  end
end