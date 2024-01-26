class LojaLivroController < ApplicationController
  def index
    @autors = Autor.all
    @livros = Livro.all
  end

  def new
    @autors = Autor.new
    @livros = Livro.new
  end

  def create
    @autors = Autor.new(autors_params)
    @livros = Livro.new(livros_params)
    
    if @autors.save && @livros.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def autors_params
    params.require(:autor).permit(:nome)
  end

  def livros_params
    params.require(:livro).permit(:titulo)
  end
end
