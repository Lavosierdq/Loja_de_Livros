class LojaLivroController < ApplicationController
  def index
    @autor = Autor.all
    @livro = Livro.all
  end

  def new
    @autor = Autor.new
  end

  def create
    @autor = Autor.new(autors_params)
    
    if @autor.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def autors_params
    params.require(:autor).permit(:nome)
  end

end
