# Infelizmente não é possível colocar todas as regras...
#
# http://pt.wikipedia.org/wiki/Plural e
# http://pt.wikipedia.org/wiki/Singular
ActiveSupport::Inflector.inflections do |inflect|


  inflect.irregular 'inscricao', 'inscricoes'
  inflect.irregular 'noticia', 'noticias'
  inflect.irregular 'central', 'centrais'
  #inflect.irregular 'foto_album', 'fotos_album'
  inflect.irregular 'album', 'albuns'

end