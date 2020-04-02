ExpenseContent.seed do |s|
  s.id = 1
  s.expense_statement = ExpenseStatement.find_by(id:1)
  s.account_date = Time.zone.now
  s.purpose = "営業出張"
  s.facility = "新幹線"
  s.section = "東京-大阪"
  s.round_trip = false
  s.amount = 13800
end

ExpenseContent.seed do |s|
  s.id = 2
  s.expense_statement = ExpenseStatement.find_by(id:1)
  s.account_date = Time.zone.now
  s.purpose = "営業出張"
  s.facility = "新幹線"
  s.section = "大阪-東京"
  s.round_trip = false
  s.amount = 14200
end

ExpenseContent.seed do |s|
  s.id = 3
  s.expense_statement = ExpenseStatement.find_by(id:2)
  s.account_date = Time.zone.now
  s.purpose = "展示会参加"
  s.facility = "JR"
  s.section = "東京駅-東京ビッグサイト駅"
  s.round_trip = true
  s.amount = 1048
end

ExpenseContent.seed do |s|
  s.id = 4
  s.expense_statement = ExpenseStatement.find_by(id:2)
  s.account_date = Time.zone.now
  s.purpose = "社外研修"
  s.facility = "地下鉄"
  s.section = "東京駅-赤坂駅"
  s.round_trip = true
  s.amount = 336
end