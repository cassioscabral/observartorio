class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :nome_link_menu
      t.text :conteudo_link

      t.timestamps
    end
  end
end
