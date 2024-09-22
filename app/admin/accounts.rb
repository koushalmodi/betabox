ActiveAdmin.register Account do
  permit_params :email, :first_name, :last_name, :school_id, :role_id, :admin_create

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :role
    column :school
    actions
  end

  filter :email
  filter :first_name
  filter :last_name

  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :role
      f.input :school
      f.input :admin_create, input_html: {value: true}, as: :hidden 
    end
    f.actions
  end

  controller do
    def create
    end
  end

end
