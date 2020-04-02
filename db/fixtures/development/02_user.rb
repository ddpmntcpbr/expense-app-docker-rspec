User.seed do |s|
  s.id = 1
  s.company = Company.find_by(id:1)
  s.email = "admin@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "AdminLastName"
  s.first_name = "AdminFirstName"
  s.approver = false
  s.system_admin = true
end

User.seed do |s|
  s.id = 2
  s.company = Company.find_by(id:2)
  s.email = "approver@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "ApproverLastName"
  s.first_name = "ApproverFirstName"
  s.approver = true
  s.system_admin = false
end

User.seed do |s|
  s.id = 3
  s.company = Company.find_by(id:2)
  s.email = "employee@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "EmployeeLastName"
  s.first_name = "EmployeeFirstName"
  s.approver = false
  s.system_admin = false
end

User.seed do |s|
  s.id = 4
  s.company = Company.find_by(id:2)
  s.email = "employee2@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "EmployeeLastName2"
  s.first_name = "EmployeeFirstName2"
  s.approver = false
  s.system_admin = false
end

User.seed do |s|
  s.id = 5
  s.company = Company.find_by(id:2)
  s.email = "employee3@example.com"
  s.password = "foobar"
  s.confirmed_at = Time.zone.now
  s.confirmation_sent_at = Time.zone.now
  s.last_name = "EmployeeLastName3"
  s.first_name = "EmployeeFirstName3"
  s.approver = false
  s.system_admin = false
end