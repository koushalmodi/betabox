class School < ApplicationRecord
  belongs_to :admin_user
  has_many :accounts
  validates_presence_of :name, :address
end
