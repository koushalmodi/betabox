class RemoveColumnFromAccounts < ActiveRecord::Migration[7.2]
  def change
    remove_reference :accounts, :admin_user, foreign_key:true, null: false
  end
end
