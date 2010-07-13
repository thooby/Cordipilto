class OpenmapasController < ApplicationController
  # GET /openmapas
  # GET /openmapas.xml
  def index
    @openmapas = Openmapa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @openmapas }
    end
  end

  # GET /openmapas/1
  # GET /openmapas/1.xml
  def show
    @openmapa = Openmapa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @openmapa }
    end
  end

  # GET /openmapas/new
  # GET /openmapas/new.xml
  def new
    @openmapa = Openmapa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @openmapa }
    end
  end

  # GET /openmapas/1/edit
  def edit
    @openmapa = Openmapa.find(params[:id])
  end

  # POST /openmapas
  # POST /openmapas.xml
  def create
    @openmapa = Openmapa.new(params[:openmapa])

    respond_to do |format|
      if @openmapa.save
        flash[:notice] = 'Openmapa was successfully created.'
        format.html { redirect_to(@openmapa) }
        format.xml  { render :xml => @openmapa, :status => :created, :location => @openmapa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @openmapa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /openmapas/1
  # PUT /openmapas/1.xml
  def update
    @openmapa = Openmapa.find(params[:id])

    respond_to do |format|
      if @openmapa.update_attributes(params[:openmapa])
        flash[:notice] = 'Openmapa was successfully updated.'
        format.html { redirect_to(@openmapa) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @openmapa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /openmapas/1
  # DELETE /openmapas/1.xml
  def destroy
    @openmapa = Openmapa.find(params[:id])
    @openmapa.destroy

    respond_to do |format|
      format.html { redirect_to(openmapas_url) }
      format.xml  { head :ok }
    end
  end
end
