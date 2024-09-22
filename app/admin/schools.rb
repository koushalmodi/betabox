ActiveAdmin.register School do
  permit_params :name, :address, :admin_user_id

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :admin_user
    actions
  end

  filter :email
  filter :first_name
  filter :last_name

  form do |f|
    f.inputs do
      f.input :name
      f.input :address
      f.input :admin_user, as: :select, collection: AdminUser.all.pluck(:email, :id)
    end
    f.actions
  end

end
