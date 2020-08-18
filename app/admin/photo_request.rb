ActiveAdmin.register PhotoRequest do
  permit_params :schedule, :contact, :reply

  index do
    selectable_column
    column :reply
    column :contact
    column :schedule
    column :created_at
    column :updated_at
    column :user
    column :claimed_by
    
    actions
  end
end