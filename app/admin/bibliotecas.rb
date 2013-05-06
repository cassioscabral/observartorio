ActiveAdmin.register Biblioteca do
   index do
     column :titulo
     column :categoria
     default_actions
   end

  filter :titulo
  filter :categoria

  form :partial => "form"

end
