ExpenseStatement.seed do |s|
  s.id = 1
  s.user = User.find_by(id:3)
  s.purpose = 'A社営業出張'
end

ExpenseStatement.seed do |s|
  s.id = 2
  s.user = User.find_by(id:3)
  s.purpose = '社外研修'
  s.applied = true
  s.approved = true
end