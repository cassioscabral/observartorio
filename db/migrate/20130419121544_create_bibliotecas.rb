class CreateBibliotecas < ActiveRecord::Migration
  def change
    create_table :bibliotecas do |t|
      t.string :titulo
      t.string :categoria
      t.string :path_arquivo

      t.timestamps
    end
  end
end
