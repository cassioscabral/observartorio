ActiveAdmin.register Noticia do
  index do
    column :titulo
    column :resumo
    column :autor
    default_actions
  end
end
