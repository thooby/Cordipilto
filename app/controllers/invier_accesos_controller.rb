class InvierAccesosController < ApplicationController
  # GET /invier_accesos
  # GET /invier_accesos.xml
  def index
    @invier_accesos = InvierAcceso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @invier_accesos }
    end
  end

  # GET /invier_accesos/1
  # GET /invier_accesos/1.xml
  def show
    @invier_acceso = InvierAcceso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @invier_acceso }
    end
  end

  # GET /invier_accesos/new
  # GET /invier_accesos/new.xml
  def new
    @invier_acceso = InvierAcceso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @invier_acceso }
    end
  end

  # GET /invier_accesos/1/edit
  def edit
    @invier_acceso = InvierAcceso.find(params[:id])
  end

  # POST /invier_accesos
  # POST /invier_accesos.xml
  def create
    @invier_acceso = InvierAcceso.new(params[:invier_acceso])

    respond_to do |format|
      if @invier_acceso.save
        flash[:notice] = 'InvierAcceso was successfully created.'
        format.html { redirect_to(@invier_acceso) }
        format.xml  { render :xml => @invier_acceso, :status => :created, :location => @invier_acceso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @invier_acceso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /invier_accesos/1
  # PUT /invier_accesos/1.xml
  def update
    @invier_acceso = InvierAcceso.find(params[:id])

    respond_to do |format|
      if @invier_acceso.update_attributes(params[:invier_acceso])
        flash[:notice] = 'InvierAcceso was successfully updated.'
        format.html { redirect_to(@invier_acceso) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @invier_acceso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /invier_accesos/1
  # DELETE /invier_accesos/1.xml
  def destroy
    @invier_acceso = InvierAcceso.find(params[:id])
    @invier_acceso.destroy

    respond_to do |format|
      format.html { redirect_to(invier_accesos_url) }
      format.xml  { head :ok }
    end
  end
end
