User.seed do |s|
  s.id = 1
  s.email = "admin@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "AdminLastName"
  s.first_name = "AdminFirstName"
  s.approver = false
  s.system_admin = true
  s.company_id = 1
end

User.seed do |s|
  s.id = 2
  s.email = "approver@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "ApproverLastName"
  s.first_name = "ApproverFirstName"
  s.approver = true
  s.system_admin = false
  s.company_id = 2
end

User.seed do |s|
  s.id = 3
  s.email = "employee@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "EmployeeLastName"
  s.first_name = "EmployeeFirstName"
  s.approver = false
  s.system_admin = false
  s.company_id = 2
end