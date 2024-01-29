class AutorController < ApplicationController

  def index
    @autor = Autor.all
  end

  def new
    @autor = Autor.new
  end

  def create 
    @autor = Autor.new(autor_params)
    
    if @autor.save
      redirect_to root_path
    else
      render :new,status: :unprocessable_entity
    end
  end

  def autor_params
    params.require(:autor).permit(:nome)
  end
end
