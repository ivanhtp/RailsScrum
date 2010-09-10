class TarefasController < ApplicationController
  # GET /tarefas
  # GET /tarefas.xml
  

  
  def index
	#@tarefas = Tarefa.all
	@tarefas = Tarefa.all(:conditions => { :estoria_id => params[:estoria_id]  })


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tarefas }
    end
  end

  # GET /tarefas/1
  # GET /tarefas/1.xml
  def show
    @tarefa = Tarefa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tarefa }
    end
  end

  # GET /tarefas/new
  # GET /tarefas/new.xml
  def new
    @tarefa = Tarefa.new
    @tarefa.estoria_id = params[:estoria_id] 
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tarefa }
    end
  end

  # GET /tarefas/1/edit
  def edit
    @tarefa = Tarefa.find(params[:id])
  end



  # POST /tarefas
  # POST /tarefas.xml
  def create
    @tarefa = Tarefa.new(params[:tarefa])
 
    
    respond_to do |format|
      if @tarefa.save
        flash[:notice] = '<img src=/images/flashes/ok.png>Tarefa criada com sucesso!'
        format.html { redirect_to :controller=>'tarefas', :action => 'show', :id => @tarefa.id, :estoria_id => @tarefa.estoria_id}
        	  
        #(:conditions => { :estoria_id => params[:estoria_id]  })
        format.xml  { render :xml => @tarefa, :status => :created, :location => @tarefa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tarefa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tarefas/1
  # PUT /tarefas/1.xml
  def update
    @tarefa = Tarefa.find(params[:id])

    respond_to do |format|
      if @tarefa.update_attributes(params[:tarefa])
        flash[:notice] = '<img src=/images/flashes/ok.png>Tarefa atualizada com sucesso!'
        format.html { redirect_to(@tarefa) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tarefa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tarefas/1
  # DELETE /tarefas/1.xml
  def destroy
    @tarefa = Tarefa.find(params[:id])
    @tarefa.destroy

    respond_to do |format|
      format.html { redirect_to :controller => 'tarefas', :action => 'index', :estoria_id => @tarefa.estoria_id }
      format.xml  { head :ok }
    end
  end
end
