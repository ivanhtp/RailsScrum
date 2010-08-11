class SprintDiariosController < ApplicationController
  # GET /sprint_diarios
  # GET /sprint_diarios.xml
  def index
    @sprint_diarios = SprintDiario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sprint_diarios }
    end
  end

  # GET /sprint_diarios/1
  # GET /sprint_diarios/1.xml
  def show
    @sprint_diario = SprintDiario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sprint_diario }
    end
  end

  # GET /sprint_diarios/new
  # GET /sprint_diarios/new.xml
  def new
    @sprint_diario = SprintDiario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sprint_diario }
    end
  end

  # GET /sprint_diarios/1/edit
  def edit
    @sprint_diario = SprintDiario.find(params[:id])
  end

  # POST /sprint_diarios
  # POST /sprint_diarios.xml
  def create
    @sprint_diario = SprintDiario.new(params[:sprint_diario])

    respond_to do |format|
      if @sprint_diario.save
        flash[:notice] = 'SprintDiario was successfully created.'
        format.html { redirect_to(@sprint_diario) }
        format.xml  { render :xml => @sprint_diario, :status => :created, :location => @sprint_diario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sprint_diario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sprint_diarios/1
  # PUT /sprint_diarios/1.xml
  def update
    @sprint_diario = SprintDiario.find(params[:id])

    respond_to do |format|
      if @sprint_diario.update_attributes(params[:sprint_diario])
        flash[:notice] = 'SprintDiario was successfully updated.'
        format.html { redirect_to(@sprint_diario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sprint_diario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_diarios/1
  # DELETE /sprint_diarios/1.xml
  def destroy
    @sprint_diario = SprintDiario.find(params[:id])
    @sprint_diario.destroy

    respond_to do |format|
      format.html { redirect_to(sprint_diarios_url) }
      format.xml  { head :ok }
    end
  end
end
