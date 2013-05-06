class Noticia < ActiveRecord::Base
  attr_accessible :autor, :conteudo, :resumo, :titulo
end
