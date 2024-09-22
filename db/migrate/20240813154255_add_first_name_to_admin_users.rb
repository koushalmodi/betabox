class AddFirstNameToAdminUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :admin_users, :first_name, :string
    add_reference :admin_users, :role, foreign_key:true, null: false
  end
end
