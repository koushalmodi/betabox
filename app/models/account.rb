class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_validation :check_validations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :admin_create
  belongs_to :school, optional: true
  belongs_to :role
  validates_presence_of :first_name, :last_name, :email
  def check_validations
    if self.admin_create=="true" && self.password.nil?
      self.password="Password@#{rand(100..999)}"
    end
  end
end
