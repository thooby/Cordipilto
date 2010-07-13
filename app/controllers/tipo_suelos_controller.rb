class TipoSuelosController < ApplicationController
  # GET /tipo_suelos
  # GET /tipo_suelos.xml
  def index
    @tipo_suelos = TipoSuelo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_suelos }
    end
  end

  # GET /tipo_suelos/1
  # GET /tipo_suelos/1.xml
  def show
    @tipo_suelo = TipoSuelo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_suelo }
    end
  end

  # GET /tipo_suelos/new
  # GET /tipo_suelos/new.xml
  def new
    @tipo_suelo = TipoSuelo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_suelo }
    end
  end

  # GET /tipo_suelos/1/edit
  def edit
    @tipo_suelo = TipoSuelo.find(params[:id])
  end

  # POST /tipo_suelos
  # POST /tipo_suelos.xml
  def create
    @tipo_suelo = TipoSuelo.new(params[:tipo_suelo])

    respond_to do |format|
      if @tipo_suelo.save
        flash[:notice] = 'TipoSuelo was successfully created.'
        format.html { redirect_to(@tipo_suelo) }
        format.xml  { render :xml => @tipo_suelo, :status => :created, :location => @tipo_suelo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_suelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_suelos/1
  # PUT /tipo_suelos/1.xml
  def update
    @tipo_suelo = TipoSuelo.find(params[:id])

    respond_to do |format|
      if @tipo_suelo.update_attributes(params[:tipo_suelo])
        flash[:notice] = 'TipoSuelo was successfully updated.'
        format.html { redirect_to(@tipo_suelo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_suelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_suelos/1
  # DELETE /tipo_suelos/1.xml
  def destroy
    @tipo_suelo = TipoSuelo.find(params[:id])
    @tipo_suelo.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_suelos_url) }
      format.xml  { head :ok }
    end
  end
end
