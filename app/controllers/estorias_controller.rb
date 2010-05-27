class EstoriasController < ApplicationController
  def index
    @estorias = Estoria.find(:all)
  end
  
  def show
    @estoria = Estoria.find(params[:id])
  end
  
  def new
    @estoria = Estoria.new
  end
  
  def create
    @estoria = Estoria.new(params[:estoria])
    if @estoria.save
      flash[:aviso] = 'Estória cadastrada com sucesso.'
      redirect_to(@estoria)
    else
      flash[:aviso] = 'O formulário contém erros. Verifique os campos e envie novamente.'
      render :action => "new"
    end
  end
  
  def edit
    @estoria = Estoria.find(params[:id])
  end
  
  def update
    @estoria = Estoria.find(params[:id])
    if @estoria.update_attributes(params[:estoria])
      flash[:aviso] = 'Estória atualizada.'
      redirect_to(@estoria)
    end
  end
  
  def destroy
    @estoria = Estoria.find(params[:id])
    @estoria.destroy
    flash[:aviso] = "Estoria excluida"
    redirect_to(estorias_path)
  end
end
