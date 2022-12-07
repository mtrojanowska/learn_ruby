FactoryBot.define do
  factory :teacher do
    first_name do
      Faker::Name.first_name
    end
    last_name do
      Faker::Name.last_name
    end
    email { Faker::Internet.email }
    password { 'dupablada' }
    password_confirmation { 'dupablada' }
  end
end
