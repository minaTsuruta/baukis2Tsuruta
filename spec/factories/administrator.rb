FactoryBot.define do
    factory :administrator do
      sequence(:email) { |n| "memver#{n}@example.com" }
      password { "pw" }
      suspended { false }
    end
  end