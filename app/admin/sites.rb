ActiveAdmin.register Site do
   index do
     column "Link", :nome_link_menu
     column "Conteudo do Link", :conteudo_link
     default_actions
   end
end
