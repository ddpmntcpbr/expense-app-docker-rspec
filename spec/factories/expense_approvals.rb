FactoryBot.define do
  factory :expense_approval do
    user { nil }
    expense_statement { nil }
    comment { "MyText" }
    approved { false }
  end
end
