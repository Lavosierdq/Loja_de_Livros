class LivroController < ApplicationController

  def cadastro
    @livro  = Livro.all
  end

  def create
    @livro = Livro.new(livro_params)

    if @livro.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  private 

  def livro_params
    params.require(:livro).permit(:livro,:autor_id)
  end
  
end
