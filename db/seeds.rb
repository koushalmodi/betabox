# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
roles = Role::ROLES
role = Role.find_or_create_by(name: roles[:supermanager])
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
admin_user = AdminUser.find_or_initialize_by(email: "admin@example.com")
admin_user.first_name = "Jones"
admin_user.password = "password"
admin_user.role_id = role.id
admin_user.save

Role.find_or_create_by(name: roles[:manager])
Role.find_or_create_by(name: roles[:lead])
Role.find_or_create_by(name: roles[:teacher])