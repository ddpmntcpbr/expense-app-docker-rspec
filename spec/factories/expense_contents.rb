FactoryBot.define do
  factory :expense_content do
    user { nil }
    account_date { "2020-04-01 11:43:03" }
    purpose { "MyString" }
    facility { "MyString" }
    section { "MyString" }
    round_trip { false }
    amount { 1 }
  end
end
