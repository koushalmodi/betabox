class Role < ApplicationRecord
  ROLES = {
      supermanager: "SuperManager",
      manager: "Manager",
      lead: "Lead",
      teacher: "Teacher",
    }.freeze
  has_many :admin_users
  has_many :accounts
end
