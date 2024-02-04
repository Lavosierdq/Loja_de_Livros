class LivroController < ApplicationController

  def new
    @livro = Livro.new
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
    params.require(:livro).permit(:titulo,:autor_id)
  end
  
end
