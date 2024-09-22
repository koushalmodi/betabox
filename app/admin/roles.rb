ActiveAdmin.register Role do
actions :all, except: %i[new destroy edit]
  index do
    selectable_column
    id_column
    column :name
    actions
  end

end
