class LojaLivrosController < ApplicationController

  def index
    @autors = Autor.all
    @livros = Livro.all
  end

end
