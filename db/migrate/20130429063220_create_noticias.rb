class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.text :resumo
      t.text :conteudo
      t.string :autor

      t.timestamps
    end
  end
end
