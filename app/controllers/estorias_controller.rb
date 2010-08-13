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
      flash[:notice] = 'Estória cadastrada com sucesso.'
	  redirect_to :controller=>'tarefas', :action => 'new', :estoria_id => @estoria.id
    else
      flash[:notice] = 'O formulário contém erros. Verifique os campos e envie novamente.'
      render :action => "new"
    end


  end
  
  def edit
    @estoria = Estoria.find(params[:id])
  end
  
  def update
    @estoria = Estoria.find(params[:id])
    if @estoria.update_attributes(params[:estoria])
      flash[:notice] = 'Estória atualizada.'
      redirect_to(@estoria)
    end
  end
  
  def destroy
    @estoria = Estoria.find(params[:id])
    @estoria.destroy
    flash[:notice] = "Estoria excluida"
    redirect_to(estorias_path)
  end
end
