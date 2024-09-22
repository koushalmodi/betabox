ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :first_name

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
