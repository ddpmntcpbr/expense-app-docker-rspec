ExpenseContent.seed do |s|
  s.id = 1
  s.expense_statement = ExpenseStatement.find_by(id:1)
  s.account_date = Date.today
  s.facility = "新幹線"
  s.section_from = "東京駅"
  s.section_from = "豊洲駅"
  s.round_trip = false
  s.amount = 340
end

ExpenseContent.seed do |s|
  s.id = 2
  s.expense_statement = ExpenseStatement.find_by(id:1)
  s.account_date = Date.today
  s.facility = "新幹線"
  s.section_from = "東京駅"
  s.section_to = "大阪駅"
  s.round_trip = true
  s.amount = 14200
end

ExpenseContent.seed do |s|
  s.id = 3
  s.expense_statement = ExpenseStatement.find_by(id:2)
  s.account_date = Date.today
  s.facility = "JR"
  s.section_from = "東京駅"
  s.section_to = "東京ビッグサイト駅"
  s.round_trip = true
  s.amount = 1048
end

ExpenseContent.seed do |s|
  s.id = 4
  s.expense_statement = ExpenseStatement.find_by(id:2)
  s.account_date = Date.today
  s.facility = "地下鉄"
  s.section_from = "東京駅"
  s.section_to = "赤坂駅"
  s.round_trip = true
  s.amount = 336
end