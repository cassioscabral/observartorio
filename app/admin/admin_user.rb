ActiveAdmin.register AdminUser do     
  index do
    column "Email", :email
    column "Visto pela ultima vez em:", :last_sign_in_at
    column "Contagem de Login", :sign_in_count
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Cadastro de Login" do
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.actions                         
  end                                 
end                                   
