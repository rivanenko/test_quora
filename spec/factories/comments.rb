FactoryBot.define do
  factory :comment do
    body { "MyText" }
    answer { nil }
    user { nil }
  end
end
