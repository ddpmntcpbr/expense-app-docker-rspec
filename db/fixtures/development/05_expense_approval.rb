ExpenseApproval.seed do |s|
  s.id = 1
  s.expense_statement = ExpenseStatement.find_by(id:2)
  s.user = User.find_by(id:2)
  s.comment = "了解しました"
  s.approved = true
end

