FactoryBot.define do
  factory :expense_statement do
    user { nil }
    applied { false }
    applied_at { "2020-04-01 11:35:34" }
    approved { false }
    approved_at { "2020-04-01 11:35:34" }
  end
end
