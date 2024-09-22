class CreateSchools < ActiveRecord::Migration[7.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.references :admin_user
      t.timestamps
    end
  end
end
