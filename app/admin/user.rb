ActiveAdmin.register User do
    permit_params :email, :password, :password_confirmation, :is_photographer

    
  end