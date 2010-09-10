class EstoriasController < ApplicationController
	  include AuthenticatedSystem
  def index
	@estorias = Estoria.all
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
      flash[:notice] = '<img src=/images/flashes/ok.png >Estória cadastrada com sucesso.'
	  redirect_to :controller=>'tarefas', :action => 'new', :estoria_id => @estoria.id
    else
      flash[:notice] = '<img src=/images/flashes/fail.png>O formulário contém erros. Verifique os campos e envie novamente.'
      render :action => "new"
    end
  end
  
  def edit
    @estoria = Estoria.find(params[:id])
  end
  
  def update
    @estoria = Estoria.find(params[:id])
    if @estoria.update_attributes(params[:estoria])
      flash[:notice] = '<img src=/images/flashes/ok.png >Estória atualizada.'
      redirect_to(@estoria)
    end
  end
  
  def destroy
    @estoria = Estoria.find(params[:id])
    if @estoria.sprint_id.nil?
        #Deleta todas as tarefas da estoria
		Tarefa.delete_all(["estoria_id = ?", @estoria.id])
    @estoria.destroy
    flash[:notice] = '<img src=/images/flashes/ok.png >Estoria excluida'
    redirect_to(estorias_path)
	else
	  flash[:notice] = '<img src=/images/flashes/fail.png >Esta estória já foi associada a um Sprint. Não pode ser excluída'
      render :action => "show"		
	end		
  end




end
