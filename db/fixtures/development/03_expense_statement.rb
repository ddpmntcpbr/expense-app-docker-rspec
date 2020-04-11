ExpenseStatement.seed do |s|
  s.id = 1
  s.user = User.find_by(id:3)
end

ExpenseStatement.seed do |s|
  s.id = 2
  s.user = User.find_by(id:3)
  s.applied = true
  s.approved = true
end