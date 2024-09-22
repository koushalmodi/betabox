class AddRoleReferencesToAccounts < ActiveRecord::Migration[7.2]
  def change
    add_reference :accounts, :school, foreign_key: true
    add_reference :accounts, :admin_user, foreign_key: true, null: false
    add_reference :accounts, :role, foreign_key:true, null: false
  end
end
