ExpenseStatement.seed do |s|
  s.id = 1
  s.user = User.find_by(id:3)
end

ExpenseStatement.seed do |s|
  s.id = 2
  s.user = User.find_by(id:3)
  s.applied = true
  s.applied_at = Time.zone.now
  s.approved = true
  s.approved_at = Time.zone.now
end